import React, { useState } from 'react'

import Button from '@material-ui/core/Button'
import Logout from '@material-ui/icons/ExitToAppRounded'
import Menu from '@material-ui/core/Menu'
import MenuItem from '@material-ui/core/MenuItem'
import Link from '@material-ui/core/Link'

export default function MenuLogout(props) {
    const [anchorEl, setAnchorEl] = useState(null)
    const { handleSession } = props

    const handleClick = (event) => {
        setAnchorEl(event.currentTarget)
    }

    const handleClose = () => {
        setAnchorEl(null)
    }

    return (
        <div>
            <Button>
                <Logout
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
                <MenuItem style={{ color: 'rgb(33, 33, 33)' }} component={Link} href='/inicio' onClick={handleSession}>Cerrar Sesión</MenuItem>
                {/* <MenuItem onClick={handleSession}>Eliminar Cuenta</MenuItem> */}
            </Menu>
        </div>
    )
}
