import React, { useState } from 'react'
import Snackbar from '@material-ui/core/Snackbar'
import MuiAlert from '@material-ui/lab/Alert'

function Alert(props) {
    return <MuiAlert elevation={6} variant="filled" {...props} />
}

export default function Successfull(props) {
    const { successMessage, handleCloseNotificationMessage } = props
    const vertical = 'top'
    const horizontal = 'center'
    const [open, setOpen] = useState(true)

    const handleClose = (event, reason) => {
        if (reason === 'clickaway') {
            return
        }
        setOpen(false)
        handleCloseNotificationMessage()
    }

    return (
        <Snackbar
            autoHideDuration={2500}
            open={open}
            onClose={handleClose}
            anchorOrigin={{ vertical, horizontal }}
        >
            <Alert onClose={handleClose} severity="success">
                {successMessage}
            </Alert>
        </Snackbar>
    )
}
