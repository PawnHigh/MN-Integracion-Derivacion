import React, { useState, useEffect } from 'react'
import { db, auth } from '../../../firebase'

import { makeStyles } from '@material-ui/core/styles'
import Grid from '@material-ui/core/Grid'
import Button from '@material-ui/core/Button'
import Link from '@material-ui/core/Link'
import Typography from '@material-ui/core/Typography'
import Paper from '@material-ui/core/Paper'
import GridList from '@material-ui/core/GridList'
import GridListTile from '@material-ui/core/GridListTile'
import GridListTileBar from '@material-ui/core/GridListTileBar'
import IconButton from '@material-ui/core/IconButton'
import StarBorderIcon from '@material-ui/icons/StarBorder'
import CircularProgress from '@material-ui/core/CircularProgress'

export default function Profiletab(props) {
    const classes = useStyles()
    const [user, setUser] = useState({})
    const [authenticate, setAuthenticate] = useState(false)

    useEffect(() => {
        auth.onAuthStateChanged(user => {
            if (user) {
                //console.log('sigin', user)
                setUser(user)
                // si el usuario existe e inicio sesion correctamente
                setAuthenticate(true) 
            } else {
                console.log('sigout')
                // si el usuario no existe e inicio sesion incorrectamente
                setAuthenticate(false)
            }
        })
    }, [])

    return (
        <div className={classes.root} style={{ justifyContent: 'center' }} >
            <Paper className={classes.paper}>
                {authenticate ?
                    (<div>
                        <Grid container spacing={2} className={`${classes.space}`}>
                            <Grid item xs>
                                <Typography className={`inicioFontFamily noActionsColor`} gutterBottom variant="h4" component="h2">
                                    Favoritos
                                </Typography>
                                <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                    {user.email}
                                </Typography>
                            </Grid>
                            <Grid item>
                                <Button style={{ textDecoration: 'none' }} component={Link} className={`portadaSaberMas`} variant="outlined" href="/assets/Software.mlappinstall.rar">
                                    Descargar Aplicación
                                </Button>
                            </Grid>
                        </Grid>
                        <Favorites userE={user.email} />
                    </div>) :
                    (<div>
                        <Grid className={`${classes.imgnoRegs}`}>
                            <img className={`MuiGridListTile-noRegister`} alt={`No registrado`} src={`https://i.ibb.co/mDFPQbk/Registrate.png`} />
                        </Grid>
                    </div>)}
            </Paper>
        </div>
    )
}

function Favorites(props) {
    const { userE } = props
    const classes = useStyles()
    const [tileData, setTileData] = useState([])
    const [isLoaded, setIsLoaded] = useState(false)

    useEffect(() => {
        const getData = () => {
            db.collection('favorites').doc(userE).onSnapshot((query) => {
                //console.log(query.data().Favs)
                /* query.forEach(element => {
                    docs.push({ ...element.data(), id: element.id })
                }) */
                if (query.data() !== undefined) {
                    setTileData(query.data().Favs)
                } else {
                    const postFCategory = async e => {
                        const jsonValues = {
                            Favs: [{ ImagenUrl: 'https://i.ibb.co/YLMZDG7/Tus-Favotiros.png' }]
                        }
                        await db.collection(`favorites`).doc(userE).set(jsonValues)
                    }
                    postFCategory()
                }
                //console.log(query.data().Favs)
                setIsLoaded(true)
            })
        }
        getData()
    }, [userE])

    return (<div>
        {!isLoaded ?
            (<div className={classes.loaded}>
                <CircularProgress className={'noActionsColor'} />
            </div>) :
            (<div className={`${classes.slide}`}>
                <GridList className={`${classes.gridList}`} cols={2.5}>
                    {tileData.map((tile, index) => (
                        <GridListTile key={tile.ImagenUrl} className={`MuiGridListTile-profile`}>
                            <img src={tile.ImagenUrl} alt={tile.Name} />
                            <GridListTileBar
                                title={tile.Name}
                                classes={{
                                    root: classes.titleBar,
                                }}
                                actionIcon={
                                    <IconButton aria-label={`star ${tile.Name}`} className={classes.icon}>
                                        <StarBorderIcon />
                                    </IconButton>
                                }
                            />
                        </GridListTile>
                    ))}
                </GridList>
            </div>)
        }
    </div>)
}

const useStyles = makeStyles((theme) => ({
    main: {
        position: "relative",
        zIndex: "3"
    },
    mainRaised: {
        borderRadius: "6px",
    },
    root: {
        /* textAlign: 'center', */
    },
    paper: {
        padding: theme.spacing(2),
        margin: 'auto',
        maxWidth: 1300,
    },
    icon: {
        color: 'rgb(223,187,47)',
    },
    space: {
        padding: theme.spacing(2),
    },
    slide: {
        display: 'flex',
        flexWrap: 'wrap',
        justifyContent: 'space-around',
        overflow: 'hidden',
        backgroundColor: theme.palette.background.paper,
    },
    gridList: {
        flexWrap: 'nowrap',
        // Promote the list into his own layer on Chrome. This cost memory but helps keeping high FPS.
        transform: 'translateZ(0)',
    },
    titleBar: {
        background: 'rgb(0,0,0,0)',
    },
    loaded: {
        display: 'flex',
        padding: 10,
        textAlign: 'center',
        justifyContent: 'center'
    },
    imgnoRegs: {
        textAlign: 'center',
    }
}))