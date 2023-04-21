import { PrismaClient } from '@prisma/client'
import fs from 'fs'

import run from './config/db'

const prisma = new PrismaClient({
    log: ['error', 'warn'],
    errorFormat: 'minimal',
})

const fsData = fs.readFileSync('./config/data.txt', 'utf8')

console.log('[ config/db started ]')
run(fsData, prisma)
    .then(() => {
        console.log('[ config/db done ]')
    })
    .catch((e) => {
        console.log('[ config/db error ]')
        console.log(e)
    })
