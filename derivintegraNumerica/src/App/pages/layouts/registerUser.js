import React, { useState } from 'react'
import { Redirect } from 'react-router'
import { auth, googleProvider } from '../../../firebase'

import { makeStyles } from '@material-ui/core/styles'
import Button from '@material-ui/core/Button'
import TextField from '@material-ui/core/TextField'
import Link from '@material-ui/core/Link'
import Grid from '@material-ui/core/Grid'
import Typography from '@material-ui/core/Typography'
import Container from '@material-ui/core/Container'
import Toolbar from '@material-ui/core/Toolbar'

export default function SignUp(props) {
    const classes = useStyles()
    const { handleCloseSignUp, handleOpenSignIn, handleMessageSuccess, handleMessageUnsuccess } = props
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [ttoo, setTtoo] = useState(false)

    const handleEmail = (e) => { setEmail(e.target.value) }
    const handlePassword = (e) => { setPassword(e.target.value) }

    const createUser = (email, password) => {
        auth.createUserWithEmailAndPassword(email, password)
            .then(userCredential => {
                console.log("Registrado")
            })
            .catch((error) => {
                console.log("Error")
            })
    }

    const handleRegister = (e) => {
        e.preventDefault()
        if (email === '' || password === '') {
            handleMessageUnsuccess()
        } else {
            createUser(email, password)
            closeAndOpen()
            handleMessageSuccess()
        }
    }

    const signInWithGoogle = () => {
        auth.signInWithPopup(googleProvider).then((res) => {
            //console.log(res.credential.idToken)
            handleMessageSuccess()
            handleCloseSignUp()
            setTtoo(true)
        }).catch((error) => {
            handleMessageUnsuccess()
        })
    }

    const handleGoogleLogin = (e) => {
        signInWithGoogle()
    }

    const closeAndOpen = () => { /* Cerrar el modal de Registro y Abrir el modal de Inicio de Sesion */
        handleCloseSignUp()
        handleOpenSignIn()
    }

    if (ttoo) {
        return <Redirect to='/profile' />
    }

    return (
        <Container component="main" maxWidth="xs">
            <div className={classes.paper}>
                <Toolbar to="/">
                    <img src="/assets/logo_small_icon_only.png" alt="logo" className={classes.logo} />
                </Toolbar>
                <Typography component="h1" variant="h5">
                    Regístrate
                </Typography>
                <form onSubmit={handleRegister} className={classes.form} noValidate={false}>
                    <Grid container spacing={2}>
                        <Grid item xs={12}>
                            <TextField
                                onChange={handleEmail}
                                required
                                fullWidth
                                id="email"
                                type="email"
                                label="Correo Electronico"
                                name="email"
                                autoComplete="email"
                            />
                        </Grid>
                        <Grid item xs={12}>
                            <TextField
                                onChange={handlePassword}
                                required
                                fullWidth
                                name="password"
                                label="Contraseña"
                                type="password"
                                id="password"
                                autoComplete="current-password"
                            />
                        </Grid>
                    </Grid>
                    <Button
                        type="submit"
                        fullWidth
                        variant="contained"
                        className={`${classes.submit} portadaSaberMas`}
                    >
                        Registrarse
                    </Button>
                </form>
                <Grid item> ó </Grid>
                <Button
                    type="submit"
                    fullWidth
                    onClick={handleGoogleLogin}
                    className={`${classes.submit} googleButton`}
                >
                    <Toolbar className={classes.title}>
                        <Grid container >
                            <Grid item xs={3}>
                                <img src="/assets/google.png" alt="logo" className={classes.logo} />
                            </Grid>
                            <Grid item xs={6}>
                                Ingresa con Google
                            </Grid>
                        </Grid>
                    </Toolbar>
                </Button>
                <Grid container justify="flex-end">
                    <Grid item>
                        <Link onClick={closeAndOpen} style={{ cursor: 'pointer' }} variant="body2" className={`noActionsColor`}>
                            Ya tienes una cuenta? Ingresa
                        </Link>
                    </Grid>
                </Grid>
            </div>
        </Container>
    )
}

const useStyles = makeStyles((theme) => ({
    modal: {
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
    },
    paper: {
        outline: 'none', /* quitar borde de modal */
        borderRadius: '5px',
        backgroundColor: theme.palette.background.paper,
        padding: theme.spacing(2, 4, 3),
        alignItems: 'center',
        flexDirection: 'column',
        display: 'flex',
    },
    form: {
        width: '100%', // Fix IE 11 issue.
        marginTop: theme.spacing(3),
    },
    submit: {
        margin: theme.spacing(3, 0, 2),
    },
    logo: {
        maxWidth: 60,
    },
    title: {
        padding: 0,
        flexGrow: 1,
        marginTop: 10,
        justifyContent: 'center',
    },
}))
