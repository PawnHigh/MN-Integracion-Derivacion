import React, { useState } from 'react'
import { makeStyles } from '@material-ui/core/styles'
import SignUp from './registerUser'
import Login from './loginUser'
import MessageSuccess from '../messages/successfull'
import MessageUnsuccess from '../messages/unsuccessfull'

import Modal from '@material-ui/core/Modal'
import Backdrop from '@material-ui/core/Backdrop'
import Fade from '@material-ui/core/Fade'

export default function RegisterUser(props) {
    const classes = useStyles()
    const { handleOpenModalLogin, handleCloseModalRegister, handleCloseModalLogin, openR, openL } = props
    const [messageSuccess, setMessageSuccess] = useState(false)
    const [messageUnsuccess, setMessageUnsuccess] = useState(false)

    const handleOpenSignIn = () => { handleOpenModalLogin() }
    const handleCloseSignIn = () => { handleCloseModalLogin() }
    const handleMessageUnsuccess = () => { setMessageUnsuccess(true) }
    const handleMessageSuccess = () => { setMessageSuccess(true) }

    const handleCloseNotificationMessageSuccess = (e) => {
        setMessageSuccess(false)
    }
    const handleCloseNotificationMessageUnsuccess = (e) => {
        setMessageUnsuccess(false)
    }

    return (
        <div>
            <Modal
                aria-labelledby="transition-modal-title"
                aria-describedby="transition-modal-description"
                className={classes.modal}
                onClose={handleCloseModalRegister}
                closeAfterTransition
                BackdropComponent={Backdrop}
                BackdropProps={{
                    timeout: 500,
                }}
                open={openR} >
                <Fade in={openR}>
                    <SignUp handleMessageUnsuccess={handleMessageUnsuccess} handleMessageSuccess={handleMessageSuccess} handleCloseSignUp={handleCloseModalRegister} handleOpenSignIn={handleOpenSignIn} />
                </Fade>
            </Modal>
            {messageSuccess ? <MessageSuccess handleCloseNotificationMessage={handleCloseNotificationMessageSuccess} successMessage="Usuario Registrado" /> : ''}
            {messageUnsuccess ? <MessageUnsuccess handleCloseNotificationMessage={handleCloseNotificationMessageUnsuccess} errorMessage="Faltan Datos" /> : ''}
            <Modal
                aria-labelledby="transition-modal-title"
                aria-describedby="transition-modal-description"
                className={classes.modal}
                onClose={handleCloseSignIn}
                closeAfterTransition
                BackdropComponent={Backdrop}
                BackdropProps={{
                    timeout: 500,
                }}
                open={openL} >
                <Fade in={openL} >
                    <Login />
                </Fade>
            </Modal>
        </div>
    )
}

const useStyles = makeStyles((theme) => ({
    modal: {
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
    },
}))
