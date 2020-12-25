import React, { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import AppBar from '@material-ui/core/AppBar'
import { makeStyles } from '@material-ui/core/styles'
import Toolbar from '@material-ui/core/Toolbar'
import Button from '@material-ui/core/Button'
import Grid from '@material-ui/core/Grid'
import Typography from '@material-ui/core/Typography';
import { Container, Box } from '@material-ui/core'

import Menu from './components/menu'

export default function Portada() {
    const classes = useStyles()
    const [screenSize, setScreenSize] = useState(0)
    /* console.log(screenSize) */

    useEffect(() => {
        function updateScreenSize() {
            setScreenSize(window.innerWidth)
        }
        window.addEventListener("resize", updateScreenSize)
        updateScreenSize()
        return () => window.removeEventListener("resize", updateScreenSize)
    }, [screenSize])

    return (
        <div className="portadaImage">
            <AppBar
                position="relative"
                className={classes.root}
                id={'portada-shadow'}
            >
                <Toolbar>
                    <Toolbar className={classes.title} component={Link} to="/">
                        <img src="assets/logo.svg" alt="logo" className={`${classes.logo} reducirLogo`} />
                    </Toolbar>

                    <Menu />

                </Toolbar>
            </AppBar>
            <Container >
                <Grid container className={`portadaCentrarResponsive ${classes.root}`} >
                    <Grid item >
                        <Grid container spacing={1}>
                            <Grid justify='space-between' item xs={12}>
                                <Grid item className={classes.spaceMore} >
                                    <Typography component='div' className={classes.ancho}>
                                        <Box fontSize='h2.fontSize' className={'portadaTopography'}>
                                            MN Integración y Derivación
                                        </Box>
                                        {(screenSize > 640) ? <Box fontSize='h5.fontSize' className={'portadaTopography2'}>
                                            Aprende Integración y Derivación de Métodos Numéricos de la manera más sencilla
                                        </Box> : null}

                                    </Typography>
                                    <Grid container spacing={1} className='portadaCentrarResponsive'>
                                        <Grid item>
                                            <Button className={`inicioFontFamilyPortada`} variant="outlined" href="/teoria">
                                                Teoria
                                            </Button>
                                        </Grid>
                                        <Grid item>
                                            <Button className='portadaSaberMas' variant="outlined" href="/inicio">
                                                Quiero Saber Más
                                            </Button>
                                        </Grid>
                                    </Grid>
                                </Grid>
                            </Grid>
                        </Grid>
                    </Grid>
                </Grid>
            </Container>
        </div>
    )
}

const useStyles = makeStyles((theme) => ({
    root: {
        display: 'flex',
        flexGrow: 1,
        padding: theme.spacing(2),
    },
    spaceMore: {
        padding: theme.spacing(1),
    },
    title: {
        flexGrow: 1,
    },
    logo: {
        maxWidth: 160,
    },
    ancho: {
        maxWidth: 710,
    },
}))
