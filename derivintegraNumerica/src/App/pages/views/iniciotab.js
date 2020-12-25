import React, { useEffect, useState } from 'react'
import { db, auth } from '../../../firebase'
import localS from 'local-storage'

import { makeStyles } from '@material-ui/core/styles'
import { GridListTile, GridListTileBar } from '@material-ui/core'
import Link from '@material-ui/core/Link'
import Grid from '@material-ui/core/Grid'
import IconButton from '@material-ui/core/IconButton'
import StarBorderIcon from '@material-ui/icons/StarBorder'
import CircularProgress from '@material-ui/core/CircularProgress'

export default function AdvancedGridList() {
    const classes = useStyles()
    const [tileData, setTileData] = useState([])
    const [isLoaded, setIsLoaded] = useState(false)
    const [colorIcon, setColorIcon] = useState([])
    const [authenticate, setAuthenticate] = useState(false)
    const [actualUser, setUser] = useState('')
    const [allFavs, setAllFavs] = useState([])

    /* const postCategory = async () => { // Publica una categoria invocando a esta funcion
        const jsonValues = {
            ImagenUrl: 'https://i.ibb.co/Tg9wTCK/aykut-eke-d-R4y-IGpk-Ey8-unsplash.jpg',
            Name: 'Cuadratura de Gauss',
            Products: { Name: '', Description: '', ImagenUrl: '', VideoUrl: '' }
        }
        await db.collection(`category`).doc().set(jsonValues)
    } */

    useEffect(() => {
        const getData = () => {
            db.collection('category').onSnapshot((query) => {
                const docs = []
                const colors = []
                query.forEach(element => {
                    docs.push({ ...element.data(), id: element.id })
                    colors.push('white')
                })
                setColorIcon(colors)
                setTileData(docs)
                setIsLoaded(true)
            })
        }
        //postCategory()
        auth.onAuthStateChanged(user => {
            if (user) {
                //console.log('sigin', user.email)
                setUser(user.email)
                setAuthenticate(true)
                // watch the user favorite update if the user exists
                db.collection('favorites').doc(user.email).onSnapshot((query) => {
                    if (query.data() !== undefined) {
                        const docs = query.data().Favs
                        setAllFavs(docs)
                        //console.log([...query.data().Favs], "si hay info")
                    } else {
                        const postFCategory = async e => {
                            const jsonValues = {
                                Favs: [{ ImagenUrl: 'https://i.ibb.co/YLMZDG7/Tus-Favotiros.png' }]
                            }
                            await db.collection(`favorites`).doc(user.email).set(jsonValues)
                        }
                        postFCategory()
                        //console.log(query.data(), "no hay info")
                    }
                })
            } else {
                setAuthenticate(false)
            }
        })
        getData()
    }, [actualUser])

    const postFavorite = async (cate, user) => { // Publica una categoria invocando a esta funcion
        let jsonValues = {}
        if (allFavs.length !== 0) {
            jsonValues = {
                Favs: [...allFavs, { ImagenUrl: cate.ImagenUrl, Name: cate.Name }]
            }
            await db.collection(`favorites`).doc(user).update(jsonValues)
        } else {
            jsonValues = {
                Favs: [{ ImagenUrl: cate.ImagenUrl, Name: cate.Name }]
            }
            await db.collection(`favorites`).doc(user).set(jsonValues)
        }
    }

    const saveFavorite = (value, i) => (e) => {
        e.preventDefault()
        const newColors = []
        colorIcon.forEach((element, index) => {
            if (index === i) {
                if (element === 'white') {
                    postFavorite(value, actualUser)
                    newColors.push("rgb(223,187,47)")
                } else {
                    newColors.push("white")
                }
            } else newColors.push(element)

        })
        setColorIcon(newColors)
    }

    const saveCategory = value => (e) => {
        localS.set('categoryData', value)
    }

    return (!isLoaded ?
        (<div className={classes.loaded}>
            <CircularProgress className={'noActionsColor'} />
        </div>) : (<Grid container justify="center">
            {tileData.map((value, index) => (
                <GridListTile justify="center" className={`${classes.space}`} onClick={saveCategory(value)} href={`category/${value.Name}`} button component={Link} key={value.Name} item>
                    <img src={value.ImagenUrl} alt={value.Name} className={`${classes.imagenstyle} MuiGridListImg`} />
                    <GridListTileBar
                        title={value.Name}
                        titlePosition="top"
                        actionIcon=
                        {authenticate ? (<IconButton onClick={saveFavorite(value, index)} aria-label={`star ${value.Name}`} style={{ color: colorIcon[index] }}>
                            <StarBorderIcon />
                        </IconButton>) : (null)}
                        actionPosition="left"
                        className={classes.titleBar}
                    />
                </GridListTile>
            ))}
        </Grid>)
    )
}

const useStyles = makeStyles((theme) => ({
    gridList: {
        // Promote the list into his own layer on Chrome. This cost memory but helps keeping high FPS.
        transform: 'translateZ(0)',
    },
    titleBar: {
        background:
      'linear-gradient(to bottom, rgba(0,0,0,0.7) 0%, ' +
      'rgba(0,0,0,0.3) 70%, rgba(0,0,0,0) 100%)',
    },
    imagenstyle: {
        minWidth: 268,
        maxWidth: (window.innerWidth > 680 ? (window.innerWidth / 3.3) - 50 : window.innerWidth - 50),
        height: (window.innerWidth > 680 ? (window.innerHeight / 1.13) : window.innerHeight / 1.4),
        //minHeight: (window.innerHeight / 1.13),
        //maxHeight: window.innerHeight - 160,
    },
    space: {
        padding: theme.spacing(1),
        marginTop: '25px',
    },
    loaded: {
        display: 'flex',
        padding: 25,
        textAlign: 'center',
        justifyContent: 'center'
    }
}))