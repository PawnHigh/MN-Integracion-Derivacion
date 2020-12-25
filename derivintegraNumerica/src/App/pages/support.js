import React from 'react'
import { makeStyles } from '@material-ui/core/styles'

import Drawer from './components/drawer'
import Content from './views/supporttab'
import Footer from './components/footer'

export default function Support() {
    const classes = useStyles()

    return (
        <div className={classes.root}>
            <Drawer />
            <main className={classes.content}>
                <div className={classes.toolbar} />
                <Content />
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