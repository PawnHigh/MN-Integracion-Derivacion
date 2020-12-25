import React from 'react'
import { makeStyles } from '@material-ui/core/styles'
import localS from 'local-storage'
import Grid from '@material-ui/core/Grid'
import { Box } from '@material-ui/core'
import Typography from '@material-ui/core/Typography'

export default function Informationtab() {
    const classes = useStyles()

    return (
        <div className={`${classes.main} ${classes.mainRaised}`}>
            <Grid spacing={2}>
                <Grid item>
                    <div component='div' style={{ padding: '12px' }}>
                        <Box fontSize='h3.fontSize' className={'contactotabTopography'}>
                            {localS.get('categoryData').Name}
                        </Box>
                        <Box fontSize='h6.fontSize'>
                            <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                {localS.get('categoryData').DescriptionEspecifica[0]}
                            </Typography>
                            <Grid style={{ padding: '12px' }}>
                                <img src={localS.get('categoryData').DescriptionEspecifica[1]} alt={localS.get('categoryData').Name} className={`${classes.imgDescription}`} />
                            </Grid>
                        </Box>
                        {localS.get('categoryData').DescriptionAdicional.map((value) =>
                            <Grid style={{ padding: '12px' }}>
                                <img src={value} alt={value} className={`${classes.imgDescription}`} />
                            </Grid>
                        )}

                    </div>
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
    },
    mainRaised: {
        borderRadius: "6px",
        boxShadow: '0px 0px 5px 0px rgb(0,0,0,.1)'
    },
    root: {
        flexGrow: 1,
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
}))