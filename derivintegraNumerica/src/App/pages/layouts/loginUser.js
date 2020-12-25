import React, { useState } from 'react'
import { Redirect } from 'react-router'
import { auth } from '../../../firebase'

import { makeStyles } from '@material-ui/core/styles'
import Container from '@material-ui/core/Container'
import Toolbar from '@material-ui/core/Toolbar'
import Typography from '@material-ui/core/Typography'
import Grid from '@material-ui/core/Grid'
import TextField from '@material-ui/core/TextField'
import Button from '@material-ui/core/Button'

export default function Login() {
    const classes = useStyles()
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [ttoo, setTtoo] = useState(false)

    const handleEmail = (e) => { setEmail(e.target.value) }
    const handlePassword = (e) => { setPassword(e.target.value) }

    const signinUser = (email, password) => {
        auth.signInWithEmailAndPassword(email, password)
            .then(userCredential => {
                console.log("Logeado")
            })
            .catch((error) => {
                console.log("Error")
            })
    }

    const handleLogin = (e) => {
        e.preventDefault()
        signinUser(email, password)
        setTtoo(true)
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
                    Inicia Sesión
                </Typography>
                <form onSubmit={handleLogin} className={classes.form} noValidate={false}>
                    <Grid container spacing={2}>
                        <Grid item xs={12}>
                            <TextField
                                onChange={handleEmail}
                                required
                                fullWidth
                                autoFocus
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
                        Iniciar Sesión
                    </Button>
                </form>

            </div>
        </Container>
    )
}


const useStyles = makeStyles((theme) => ({
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
        padding: 0,
    },
    title: {
        padding: 0,
        flexGrow: 1,
        marginTop: 10,
        justifyContent: 'center',
    },
}))