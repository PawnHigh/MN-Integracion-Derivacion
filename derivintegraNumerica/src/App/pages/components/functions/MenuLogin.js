import React, { useState } from 'react'

import Button from '@material-ui/core/Button'
import Account from '@material-ui/icons/AccountCircle'
import Menu from '@material-ui/core/Menu'
import MenuItem from '@material-ui/core/MenuItem'

export default function MenuLogin(props) {
    const [anchorEl, setAnchorEl] = useState(null)
    const { handleOpenModalR, handleOpenModalL } = props

    const handleClick = (event) => {
        setAnchorEl(event.currentTarget)
    }

    const handleClose = () => {
        setAnchorEl(null);
    }

    return (
        <div>
            <Button >
                <Account
                    className={'menuColorIcons'}
                    onClick={handleClick}
                />
            </Button>
            <Menu
                id="simple-menu"
                anchorEl={anchorEl}
                keepMounted
                open={Boolean(anchorEl)}
                onClose={handleClose}
            >
                <MenuItem onClick={handleOpenModalR}>Registrarse</MenuItem>
                <MenuItem onClick={handleOpenModalL}>Inicia Sesión</MenuItem>
            </Menu>
        </div>
    )
}