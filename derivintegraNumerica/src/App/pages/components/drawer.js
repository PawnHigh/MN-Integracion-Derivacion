/* 
import React, { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import Menu from './menu'

import clsx from 'clsx'
import { makeStyles, useTheme } from '@material-ui/core/styles'
import Drawer from '@material-ui/core/Drawer'
import AppBar from '@material-ui/core/AppBar'
import Toolbar from '@material-ui/core/Toolbar'
import List from '@material-ui/core/List';
import Divider from '@material-ui/core/Divider'
import IconButton from '@material-ui/core/IconButton'
import MenuIcon from '@material-ui/icons/Menu'
import ChevronLeftIcon from '@material-ui/icons/ChevronLeft'
import ChevronRightIcon from '@material-ui/icons/ChevronRight'
import ListItem from '@material-ui/core/ListItem'
import ListItemIcon from '@material-ui/core/ListItemIcon'
import ListItemText from '@material-ui/core/ListItemText'

import HomeIcon from '@material-ui/icons/Home'
import Information from '@material-ui/icons/InfoRounded'
import ProfileIcon from '@material-ui/icons/Person'

export default function MiniDrawer() {
    const classes = useStyles()
    const theme = useTheme()
    const [open, setOpen] = useState(false)

    useEffect(() => {

    }, [])

    const handleDrawerOpen = () => {
        setOpen(true)
    }

    const handleDrawerClose = () => {
        setOpen(false)
    }

    return (
        <div>
            <AppBar
                position="fixed"
                className={clsx(classes.appBar, {
                    [classes.appBarShift]: open,
                })}
            >
                <Toolbar>
                    <IconButton
                        color="inherit"
                        aria-label="open drawer"
                        onClick={handleDrawerOpen}
                        edge="start"
                        className={clsx(classes.menuButton, {
                            [classes.hide]: open,
                        })}
                    >
                        <MenuIcon />
                    </IconButton>
                    <Toolbar className={classes.title} component={Link} to="/">
                        <img src="/assets/logo_small_icon_only.png" alt="logo" className={classes.logo} />
                    </Toolbar>

                    <Menu />

                </Toolbar>
            </AppBar>
            <Drawer
                variant="permanent"
                className={clsx(classes.drawer, {
                    [classes.drawerOpen]: open,
                    [classes.drawerClose]: !open,
                })}
                classes={{
                    paper: clsx({
                        [classes.drawerOpen]: open,
                        [classes.drawerClose]: !open,
                    }),
                }}
            >
                <div className={classes.toolbar}>
                    Integración-Derivación
                    <IconButton onClick={handleDrawerClose}>
                        {theme.direction === 'rtl' ? <ChevronRightIcon /> : <ChevronLeftIcon />}
                    </IconButton>
                </div>
                <List>
                    <ListItem button
                        component={Link} to="/inicio">
                        <ListItemIcon><HomeIcon /></ListItemIcon>
                        <ListItemText primary={'Inicio'} />
                    </ListItem>
                    <ListItem button
                        component={Link} to="/profile">
                        <ListItemIcon><ProfileIcon /></ListItemIcon>
                        <ListItemText primary={'Perfil'} />
                    </ListItem>
                </List>
                <Divider />
                <List>
                    <ListItem button
                        component={Link} to="/informacion">
                        <ListItemIcon><Information /></ListItemIcon>
                        <ListItemText primary={'Informacion'} />
                    </ListItem>
                </List>
            </Drawer>

        </div>
    );
}

const drawerWidth = 240;

const useStyles = makeStyles((theme) => ({
    menuButton: {
        marginRight: theme.spacing(2),
    },
    title: {
        padding: 0,
        flexGrow: 1,
    },
    logo: {
        maxWidth: 60,
    },
    appBar: {
        display: 'flex',
        zIndex: theme.zIndex.drawer + 1,
        transition: theme.transitions.create(['width', 'margin'], {
            easing: theme.transitions.easing.sharp,
            duration: theme.transitions.duration.leavingScreen,
        }),
    },
    appBarShift: {
        marginLeft: drawerWidth,
        width: `calc(100% - ${drawerWidth}px)`,
        transition: theme.transitions.create(['width', 'margin'], {
            easing: theme.transitions.easing.sharp,
            duration: theme.transitions.duration.enteringScreen,
        }),
    },
    hide: {
        display: 'none',
    },
    drawer: {
        width: drawerWidth,
        flexShrink: 0,
        whiteSpace: 'nowrap',
    },
    drawerOpen: {
        width: drawerWidth,
        transition: theme.transitions.create('width', {
            easing: theme.transitions.easing.sharp,
            duration: theme.transitions.duration.enteringScreen,
        }),
    },
    drawerClose: {
        transition: theme.transitions.create('width', {
            easing: theme.transitions.easing.sharp,
            duration: theme.transitions.duration.leavingScreen,
        }),
        overflowX: 'hidden',
        width: theme.spacing(7) + 1,
        [theme.breakpoints.up('sm')]: {
            width: theme.spacing(9) + 1,
        },
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
        padding: theme.spacing(3),
    },
}))
 */

import React from 'react'
import AppBar from '@material-ui/core/AppBar'
import Divider from '@material-ui/core/Divider'
import Drawer from '@material-ui/core/Drawer'
import Hidden from '@material-ui/core/Hidden'
import IconButton from '@material-ui/core/IconButton'
import List from '@material-ui/core/List'
import ListItem from '@material-ui/core/ListItem'
import ListItemIcon from '@material-ui/core/ListItemIcon'
import ListItemText from '@material-ui/core/ListItemText'
import MenuIcon from '@material-ui/icons/Menu'
import Toolbar from '@material-ui/core/Toolbar'
import { makeStyles, useTheme } from '@material-ui/core/styles'
import HomeIcon from '@material-ui/icons/Home'
import { Link } from 'react-router-dom'
import ProfileIcon from '@material-ui/icons/Person'
import Teoria from '@material-ui/icons/MenuBook'
import Soporte from '@material-ui/icons/ContactSupport';
import Menu from './menu'

export default function ResponsiveDrawer(props) {
    const { window } = props;
    const classes = useStyles()
    const theme = useTheme()
    const [mobileOpen, setMobileOpen] = React.useState(false);

    const handleDrawerToggle = () => {
        setMobileOpen(!mobileOpen);
    }

    const drawer = (
        <div>
            <div className={classes.toolbar} >
                Integración-Derivación
            </div>
            <List>
                <ListItem button
                    component={Link} to="/inicio">
                    <ListItemIcon><HomeIcon /></ListItemIcon>
                    <ListItemText primary={'Inicio'} />
                </ListItem>
                <ListItem button
                    component={Link} to="/profile">
                    <ListItemIcon><ProfileIcon /></ListItemIcon>
                    <ListItemText primary={'Perfil'} />
                </ListItem>
                <ListItem button
                    component={Link} to="/teoria">
                    <ListItemIcon><Teoria /></ListItemIcon>
                    <ListItemText primary={'Teoria'} />
                </ListItem>
                <Divider />
                <ListItem button
                    component={Link} to="/soporte">
                    <ListItemIcon><Soporte /></ListItemIcon>
                    <ListItemText primary={'Soporte'} />
                </ListItem>
            </List>
        </div>
    )

    const container = window !== undefined ? () => window().document.body : undefined;

    return (
        <div className={classes.root}>
            <AppBar position="fixed" className={classes.appBar}>
                <Toolbar style={{justifyContent:'space-between'}} >
                    <IconButton
                        color="inherit"
                        aria-label="open drawer"
                        edge="start"
                        onClick={handleDrawerToggle}
                        className={classes.menuButton}
                    >
                        <MenuIcon />
                    </IconButton>
                    
                    <a href="/" >
                        <img src="/assets/logo_small_icon_only.png" alt="logo" className={`${classes.logo} ${classes.title}`} />
                    </a>

                    <Menu />
                </Toolbar>
            </AppBar>
            <nav className={classes.drawer} aria-label="mailbox folders">

                <Hidden smUp implementation="css">
                    <Drawer
                        container={container}
                        variant="temporary"
                        anchor={theme.direction === 'rtl' ? 'right' : 'left'}
                        open={mobileOpen}
                        onClose={handleDrawerToggle}
                        classes={{
                            paper: classes.drawerPaper,
                        }}
                        ModalProps={{
                            keepMounted: true, // Better open performance on mobile.
                        }}
                    >
                        {drawer}
                    </Drawer>
                </Hidden>
                <Hidden xsDown implementation="css">
                    <Drawer
                        classes={{
                            paper: classes.drawerPaper,
                        }}
                        variant="permanent"
                        open
                    >
                        {drawer}
                    </Drawer>
                </Hidden>
            </nav>

        </div>
    )
}

const drawerWidth = 190

const useStyles = makeStyles((theme) => ({
    root: {
        display: 'flex',
    },
    logo: {
        maxWidth: 60,
    },
    title: {
        padding: 0,
        flexGrow: 1,
    },
    drawer: {
        [theme.breakpoints.up('sm')]: {
            width: drawerWidth,
            flexShrink: 0,
        },
    },
    appBar: {
        [theme.breakpoints.up('sm')]: {
            width: `calc(100% - ${drawerWidth}px)`,
            marginLeft: drawerWidth,
        },
    },
    menuButton: {
        marginRight: theme.spacing(2),
        [theme.breakpoints.up('sm')]: {
            display: 'none',
        },
    },
    // necessary for content to be below app bar
    toolbar: {
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        padding: theme.spacing(0, 1),
        // necessary for content to be below app bar
        ...theme.mixins.toolbar,
        backgroundColor: 'rgb(255, 58, 97,.6)',
        color:'white',
        fontSize: '15px'
        
    },
    drawerPaper: {
        width: drawerWidth,
    },
    content: {
        flexGrow: 1,
        padding: theme.spacing(3),
    },
}))
