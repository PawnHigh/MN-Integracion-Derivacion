import React, { useState, useEffect } from 'react'
import ModalRegister from '../layouts/crudUser'
import MenuLogout from './functions/MenuLogout'
import MenuLogin from './functions/MenuLogin'

import { auth } from '../../../firebase'

import Toolbar from '@material-ui/core/Toolbar'

export default function MenU() {
    const [openR, setOpenR] = useState(false)
    const [openL, setOpenL] = useState(false)
    const [authenticate, setAuthenticate] = useState(false)
    
    useEffect(() => {
        auth.onAuthStateChanged(user => {
            if (user) {
                setAuthenticate(true)
            } else {
                setAuthenticate(false)
            }
        })
    }, [])

    const handleOpenModalRegister = () => {
        setOpenR(true)
    }

    const handleOpenModalLogin = () => {
        setOpenL(true)
    }

    const handleCloseModalRegister = () => {
        setOpenR(false)
    }

    const handleCloseModalLogin = () => {
        setOpenL(false)
    }

    const handleSession = () => { // logeo (cerrar sesion) de cuenta
        auth.signOut().then(() => {
            console.log('signout')
        })
    }

    return (
        <div>
            <Toolbar>
                {!authenticate ?
                    (<React.Fragment>
                        <MenuLogin handleOpenModalR={handleOpenModalRegister} handleOpenModalL={handleOpenModalLogin} />
                    </React.Fragment>) :
                    (<React.Fragment>
                        <MenuLogout handleSession={handleSession} />
                    </React.Fragment>)
                }
                <ModalRegister handleOpenModalLogin={handleOpenModalLogin} handleCloseModalRegister={handleCloseModalRegister} handleCloseModalLogin={handleCloseModalLogin} openR={openR} openL={openL} />
            </Toolbar>
        </div>
    )
}