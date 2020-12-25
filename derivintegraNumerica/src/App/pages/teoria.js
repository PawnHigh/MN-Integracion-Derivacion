import React from 'react'
import { makeStyles } from '@material-ui/core/styles'

import Drawer from './components/drawer'
import Footer from './components/footer'

export default function Teoria() {
    const classes = useStyles();

    return (
        <div className={classes.root}>
            <Drawer />
            <main className={classes.content}>
                <div className={classes.toolbar} />
                <embed src="assets/file.pdf" type="application/pdf" width="100%" height="700px" />
                <Footer />
            </main>
        </div>
    )
}

const useStyles = makeStyles((theme) => ({
    root: {
        display: 'flex',
    },
    toolbar: {
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'flex-end',
        padding: theme.spacing(0, 1),
        // necessary for content to be below app bar
        ...theme.mixins.toolbar,
    },
    content: {
        flexGrow: 1,
        padding: theme.spacing(1),
    },
}))