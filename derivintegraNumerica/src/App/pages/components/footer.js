import React, { useState } from 'react'
import { makeStyles, useTheme } from '@material-ui/core/styles'
import Container from '@material-ui/core/Container'
import Link from '@material-ui/core/Link'
import Grid from '@material-ui/core/Grid'
import Tooltip from '@material-ui/core/Tooltip'
import Fab from '@material-ui/core/Fab'
import Button from '@material-ui/core/Button'
import Dialog from '@material-ui/core/Dialog'
import DialogActions from '@material-ui/core/DialogActions'
import DialogContent from '@material-ui/core/DialogContent'
import DialogContentText from '@material-ui/core/DialogContentText'
import DialogTitle from '@material-ui/core/DialogTitle'
import QuestionAnswerIcon from '@material-ui/icons/QuestionAnswer'
import useMediaQuery from '@material-ui/core/useMediaQuery'

function Copyright() {
    const classes = useStyles()
    const theme = useTheme()
    const [open, setOpen] = useState(false)
    const fullScreen = useMediaQuery(theme.breakpoints.down('sm'))
    const link = 'https://docs.google.com/forms/d/e/1FAIpQLSeo8cYUFQP5iXb1WkI3T2rBgYY5akUtJHgcS2Hz45GNmF1TrQ/viewform?usp=sf_link'

    const handleClose = () => {
        setOpen(false)
    }

    return (
        <div variant="body2" color="textSecondary" align="center">
            <Grid container spacing={1}>
                <Grid item xs={12}>
                    {'Métodos Numéricos © Proyecto Final '}{new Date().getFullYear()}{'.'}
                </Grid>
                <Grid item xs={12}>
                    {'Desarrollado por '}
                    <Link style={{ color: 'rgb(255, 58, 97)' }} href='https://github.com/GerardoTBO'>
                        Equipo Alexis Luis Mayer Gerardo
                    </Link>
                </Grid>
            </Grid>
            <Tooltip title="Evaluación" aria-label="add">
                <Fab
                    onClick={() => setOpen(true)}
                    className={`${classes.fab} noActionsColor`}>
                    <QuestionAnswerIcon />
                </Fab>
            </Tooltip>
            <Dialog
                fullScreen={fullScreen}
                open={open}
                onClose={handleClose}
                aria-labelledby="responsive-dialog-title"
            >
                <DialogTitle id="responsive-dialog-title">{"Deseas participar de una evaluación?"}</DialogTitle>
                <DialogContent>
                    <DialogContentText>
                        Esta evaluación te ayudará a poner 
                        a prueba tus conocimientos obtenidos en esta plataforma.
                    </DialogContentText>
                </DialogContent>
                <DialogActions>
                    <Button variant="contained" className={` portadaSaberMas`} style={{ textDecoration: 'none' }} target={'_blank'} component={Link} href={`${link}`} onClick={handleClose}>
                        Si, deseo
                    </Button>
                    <Button className={`noActionsColor`} onClick={handleClose} color="primary">
                        No, gracias
                    </Button>
                </DialogActions>
            </Dialog>
        </div>
    )
}

export default function StickyFooter() {
    const classes = useStyles()

    return (
        <footer className={classes.footer}>
            <Container maxWidth="sm">
                <Copyright />
            </Container>
        </footer>
    );
}

const useStyles = makeStyles((theme) => ({
    footer: {
        padding: theme.spacing(3, 2),
        marginTop: 'auto',
    },
    typography: {
        padding: theme.spacing(2),
    },
    desarrollador_qr: {
        borderRadius: '4px',
        width: '120px',
        height: 'auto',
    },
    fab: {
        position: 'fixed',
        bottom: theme.spacing(2),
        right: theme.spacing(2),
    },
}))
