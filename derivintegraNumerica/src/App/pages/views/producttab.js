import React, { useEffect, useState } from 'react'
import { db } from '../../../firebase'
import localS from 'local-storage'

import { makeStyles } from '@material-ui/core/styles'
import Grid from '@material-ui/core/Grid'
import Paper from '@material-ui/core/Paper'
import Button from '@material-ui/core/Button'
import Link from '@material-ui/core/Link'
import Typography from '@material-ui/core/Typography'
import TextField from '@material-ui/core/TextField'
import IconButton from '@material-ui/core/IconButton'

import SendIcon from '@material-ui/icons/SendTwoTone'


export default function MediaControlCard() {
    const classes = useStyles()
    const [product, setProduct] = useState({})
    const [message, setMessage] = useState('')
    const [allmessage, setAllMessage] = useState([])

    useEffect(() => {
        function handle() {
            setProduct(localS.get('productData'))
            db.collection('messages').doc(localS.get('productData').Name).onSnapshot((query) => {
                if (query.data() !== undefined) {
                    const docs = query.data().Message
                    setAllMessage(docs)
                } else {
                    const postMessageDocument = async (value) => {
                        const jsonValues = {
                            Message: ['Comenta el video:']
                        }
                        await db.collection(`messages`).doc(value.Name).set(jsonValues)
                    }
                    postMessageDocument(localS.get('productData'))
                }
            })
        }
        handle()
        //console.log("test")
    }, [message])

    // Publica un comentario dee su categoria invocando a esta funcion
    const postCategory = async (value) => { 
        let jsonValues = {}
        if (allmessage.length !== 0) {
            jsonValues = {
                Message: [...allmessage, message]
            }
            await db.collection(`messages`).doc(value.Name).update(jsonValues)
        } else {
            jsonValues = {
                Message: [message]
            }
            await db.collection(`messages`).doc(value.Name).set(jsonValues)
        }
    }

    const handleSubmit = e => {
        e.preventDefault()
        postCategory(product)
        setMessage('')
    }

    const handleMessage = (e) => {
        setMessage(e.target.value)
    }

    return (
        <div className={classes.root} >
            <Paper className={classes.paper}>
                <Grid container spacing={2} className={`producttabCenterImg`}>
                    <Grid style={{ textAlign: 'center' }} item>
                        <video width="820" autoPlay controls>
                            <source src={`${product.VideoUrl}`} type="video/mp4" />
                        </video>
                    </Grid>
                    <Grid item xs={12} sm container>
                        <Grid item xs container direction="column" spacing={8} className={`producttabCenter`}>
                            <Grid item xs>
                                <Typography className={`inicioFontFamily noActionsColor`} gutterBottom variant="h4" component="h2">
                                    {product.Name}
                                </Typography>
                                <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                    {product.Description}
                                </Typography>
                                <Grid style={{ padding: '12px' }}>
                                    <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                        Ecuación:
                                    </Typography>
                                    <img src={product.Ecuacion} alt={product.Name} className={`${classes.imgDescription}`} />
                                </Grid>
                                <Grid style={{ padding: '12px' }}>
                                    <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                        Formula:
                                    </Typography>
                                    <img src={product.Formula} alt={product.Name} className={`${classes.imgDescription}`} />
                                </Grid>
                            </Grid>
                            <Grid item xs>
                                <Button style={{ textDecoration: 'none' }} component={Link} className={`portadaSaberMas`} variant="outlined" href="/assets/Software.mlappinstall.rar">
                                    Descargar Aplicación
                                </Button>
                            </Grid>
                        </Grid>
                    </Grid>
                </Grid>
            </Paper>

            <form className='' noValidate={false} onSubmit={handleSubmit}>
                <Paper component="form" className={`${classes.second} resaltar ${classes.paper}`}>
                    <TextField
                        onChange={handleMessage}
                        id="standard-multiline-static"
                        fullWidth
                        value={message}
                        label="Deja tu Comentario"
                        multiline
                        rows={2}
                    />
                    <IconButton type="submit" className={classes.iconButton} aria-label="search">
                        <SendIcon />
                    </IconButton>
                </Paper>
            </form>

            <Paper className={`${classes.paper} resaltar`}>
                <Grid container spacing={2} className={`producttabCenterImg`}>
                    {allmessage.map((value, i) => (
                        <Grid item xs={12}>
                            Comentario {i}: {value}
                        </Grid>
                    ))}
                </Grid>
            </Paper>

        </div>
    )
}

const useStyles = makeStyles((theme) => ({
    root: {
        flexGrow: 1,
    },
    paper: {
        padding: theme.spacing(1),
        margin: 'auto',
        maxWidth: 1300,
    },
    tarjeta: {
        marginRight: '10px',
        width: '50px',
        height: 'auto',
    },
    second: {
        display: 'flex',
        alignItems: 'center',
    },
    imgDescription: {
        maxWidth: '80%',
    },
}))