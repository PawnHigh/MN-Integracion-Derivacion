import React from 'react'
import { makeStyles } from '@material-ui/core/styles'
import Paper from '@material-ui/core/Paper'
import Grid from '@material-ui/core/Grid'
import Typography from '@material-ui/core/Typography'
import Button from '@material-ui/core/Button'
import Toolbar from '@material-ui/core/Toolbar'
import Link from '@material-ui/core/Link'

export default function Informationtab() {
    const classes = useStyles()
    const spacing = 4
    const authors = [{ Name: 'Gerardo Portocarrero Banda', Gmail: 'gportocarrerob@unsa.edu.pe', Number: "974 358 928", Facebook: 'https://www.facebook.com/gerardo.por' },
    { Name: 'Mayer Cutipa Condori', Gmail: 'mcutipaco@unsa.edu.pe', Number: "959 701 695", Facebook: 'https://www.facebook.com/mayer.augusto' },
    { Name: 'Alexis L. Angel Arroyo Huarachi', Gmail: 'aarroyoh@unsa.edu.pe', Number: "991 679 312", Facebook: 'https://www.facebook.com/alexis.arroyohuarachi' },
    { Name: 'Luis Armando Gómez', Gmail: 'lgomezp@unsa.edu.pe', Number: "994 688 522", Facebook: 'https://www.facebook.com/luis.gomezpomari' }]

    return (
        <div style={{ textAlign: 'center' }} className={`${classes.main} ${classes.mainRaised}`}>
            <Grid container spacing={2} className={`producttabCenterImg`}>
                <Grid style={{ textAlign: 'center' }} item>
                    <video width="800" autoPlay controls>
                        <source src={`https://firebasestorage.googleapis.com/v0/b/mn-deriva-integra.appspot.com/o/instalacion.mp4?alt=media&token=cd01904b-c47c-4536-b657-f946f5f0e560`} type="video/mp4" />
                    </video>
                </Grid>
                <Grid item xs={12} sm container>
                    <Grid item xs container direction="column" spacing={8} className={`producttabCenter`}>
                        <Grid item xs>
                            <Typography className={`inicioFontFamily noActionsColor`} gutterBottom variant="h4" component="h2">
                                Guía de Instalación del Software
                            </Typography>
                            <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                Con este VideoTutorial serás capaz de instalar correctamente el software en tu ordenador.
                            </Typography>
                        </Grid>
                        <Grid item xs>
                            <Button style={{ textDecoration: 'none' }} component={Link} className={`portadaSaberMas`} variant="outlined" href="/assets/Software.mlappinstall.rar">
                                Descargar Aplicación
                            </Button>
                        </Grid>
                    </Grid>
                </Grid>
            </Grid>
            <main className={classes.content}>
                <Typography className={`inicioFontFamily noActionsColor`} gutterBottom variant="h4" component="h2">
                    Manual de Usuario                
                </Typography>
                <div className={classes.toolbar} />
                <embed src="assets/manual.pdf" type="application/pdf" width="100%" height="500px" />
            </main>
            <Grid container className={classes.root} spacing={2}>
                <Grid item xs={12}>
                    <Typography className={`inicioFontFamily noActionsColor`} gutterBottom variant="h4" component="h2">
                        Desarrolladores
                    </Typography>
                    <Grid container justify="center" spacing={spacing}>
                        {authors.map((value) => (
                            <Grid key={value.Name} item>
                                <Paper className={classes.paper} >
                                    <Grid item className={classes.space}>
                                        <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                            {value.Name}
                                        </Typography>
                                        <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                            {value.Gmail}
                                        </Typography>
                                        <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                            {value.Number}
                                        </Typography>
                                    </Grid>

                                    <Grid item className={classes.space}>
                                        <Button
                                            fullWidth
                                            href={value.Facebook}
                                            className={`facebookButton`}>
                                            <Toolbar className={classes.title}>
                                                <Grid container spacing={2}>
                                                    <Grid item xs={12}>
                                                        <Grid container justify="center" spacing={spacing}>
                                                            <Grid item>
                                                                <img className={`${classes.logo}`} src="https://i.ibb.co/RPRpvRY/facebook.png" alt="logo" />
                                                            </Grid>
                                                            <Grid item>
                                                                Facebook
                                                            </Grid>
                                                        </Grid>
                                                    </Grid>
                                                </Grid>
                                            </Toolbar>
                                        </Button>
                                    </Grid>
                                </Paper>
                            </Grid>
                        ))}
                    </Grid>
                </Grid>
            </Grid>
        </div>
    )
}

const useStyles = makeStyles((theme) => ({
    main: {
        background: "#FFFFFF",
        position: "relative",
        zIndex: "3",
        padding: theme.spacing(2),
    },
    mainRaised: {
        borderRadius: "6px",
        boxShadow: '0px 0px 5px 0px rgb(0,0,0,.1)'
    },
    root: {
        flexGrow: 1,
        marginTop: '30px',
    },
    img: {
        margin: 'auto',
        display: 'block',
        maxWidth: '100%',
        maxHeight: '100%',
    },
    imgDescription: {
        maxWidth: '80%',
    },
    paper: {
        maxWidth: 300,
        minWidth: 270,
        minHeight: 'auto',
        padding: theme.spacing(2),
        textAlign: 'center',
        color: theme.palette.text.secondary,
        flex: '1 0 auto',
        margin: theme.spacing(1),
    },
    title: {
        padding: 0,
        flexGrow: 1,
        justifyContent: 'center',
    },
    space: {
        padding: '10px',
    },
    logo: {
        height: 25,
    },
    content: {
        flexGrow: 1,
        padding: theme.spacing(1),
        marginTop: '30px',
    },
}))