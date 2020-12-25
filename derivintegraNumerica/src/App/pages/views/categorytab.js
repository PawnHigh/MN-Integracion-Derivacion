import React, { useState, useEffect } from 'react'
//import { db } from '../../../firebase'
import localS from 'local-storage'
import InfoFO from './informationtab'

import { makeStyles } from '@material-ui/core/styles'
import Card from '@material-ui/core/Card'
import CardActionArea from '@material-ui/core/CardActionArea'
import CardActions from '@material-ui/core/CardActions'
import CardContent from '@material-ui/core/CardContent'
import CardMedia from '@material-ui/core/CardMedia'
import Button from '@material-ui/core/Button'
import Typography from '@material-ui/core/Typography'
import Grid from '@material-ui/core/Grid'
import CircularProgress from '@material-ui/core/CircularProgress'

export default function PruebaTab() {
    const classes = useStyles()
    const [products, setProducts] = useState({})
    const [isLoaded, setIsLoaded] = useState(false)

    /* const updateContentCategory = async (pole) => { // Actualiza una categoria invocando a esta funcion
        const jsonValues = {
            ImagenUrl: pole.ImagenUrl,
            Name: pole.Name,
            DescriptionEspecifica: ['Gauss, es una cuadratura construida para integrar polinomios de grado 2𝑛 − 1 o menos. Para esto selecciona los puntos de evaluación 𝑥𝑖 y los pesos 𝑤𝑖 de forma conveniente. La regla suele expresarse para una integral en el intervalo [−1, 1], y viene dada por la siguiente expresión', 'https://i.ibb.co/DYYkn1c/descriptiongauss.png'],
            DescriptionAdicional: ['https://i.ibb.co/1nTc3G7/adicionalgauss.png'],

            Products: [
                { Name: 'Gauss_Ejer1', Description: 'Calcule el área de la función dada en los intervalos [0,3] mediante cuadratura de Gauss', Ecuacion: 'https://i.ibb.co/rwb63VS/ejer1gauss.png', Formula: 'https://i.ibb.co/6tk1hb9/formulagauss.png', ImagenUrl: 'https://i.ibb.co/6HnCJPQ/EJERCICIO-1.png', VideoUrl: 'https://firebasestorage.googleapis.com/v0/b/mn-deriva-integra.appspot.com/o/gauss1.mp4?alt=media&token=2302027c-d657-414c-8c9c-92ba710547f4' },
                { Name: 'Gauss_Ejer2', Description: 'Una partícula se mueve con velocidad v(t)=  2/6 t^2-t-5 . Se debe calcular el desplazamiento de la partícula durante los tiempos t1=6 y t2=10', Ecuacion: 'https://i.ibb.co/xFw5ZLb/ejer2gauss.png', Formula: 'https://i.ibb.co/6tk1hb9/formulagauss.png', ImagenUrl: 'https://i.ibb.co/0fg5XXb/EJERCICIO2.png', VideoUrl: 'https://firebasestorage.googleapis.com/v0/b/mn-deriva-integra.appspot.com/o/gauss2.mp4?alt=media&token=81dfe40b-b072-4677-a262-a580e9400b71' },
            ]
        }
        await db.collection(`category`).doc(pole.id).set(jsonValues)
    } */

    const saveProduct = value => e => {
        localS.set('productData', value)
    }

    useEffect(() => {
        const fetchCategory = () => {
            setProducts(localS.get('categoryData'))
            //updateContentCategory(localS.get('categoryData'))
            setIsLoaded(true)
        }
        fetchCategory()
    }, [])

    return (!isLoaded ?
        (<div className={classes.loaded}>
            <CircularProgress className={'noActionsColor'} />
        </div>) :
        (<div style={{ textAlign: 'center' }} className={`${classes.space}`} >
            <InfoFO />
            <Grid container spacing={3} className={`${classes.root}`}>
                {products.Products.map((value) =>
                    <Grid item xs key={value.Name}>
                        <Card className={classes.size} >
                            <CardActionArea>
                                <CardMedia
                                    component="img"
                                    alt={value.Name}
                                    image={value.ImagenUrl}
                                    title="Contemplative Reptile"
                                />
                                <CardContent>
                                    <Typography className={`inicioFontFamily noActionsColor`} gutterBottom variant="h5" component="h2">
                                        {value.Name}
                                    </Typography>
                                    <Typography variant="body2" className={`inicioFontFamily`} color="textSecondary" component="p">
                                        {value.Description}
                                    </Typography>
                                </CardContent>
                            </CardActionArea>
                            <CardActions>
                                <Button size="small" onClick={saveProduct(value)} href={`${products.id}/${value.Name}`} className={`portadaSaberMas ${classes.price}`}>
                                    Ver Video
                                </Button>
                            </CardActions>
                        </Card>
                    </Grid>
                )}
            </Grid>
        </div>)
    )
}

const useStyles = makeStyles((theme) => ({
    root: {
        flexGrow: 1,
        marginTop: 20,
    },
    size: {
        minWidth: 268,
        minHeight: 345,
    },
    inicioStarDisable: {
        color: 'rgb(117, 117, 117)',
    },
    inicioStarActive: {
        color: 'rgb(248, 190, 1)',
    },
    price: {
        flexGrow: 1,
    },
    loaded: {
        display: 'flex',
        padding: 10,
        textAlign: 'center',
        justifyContent: 'center'
    },
    space: {
        paddingTop: theme.spacing(2),
    },
}))
