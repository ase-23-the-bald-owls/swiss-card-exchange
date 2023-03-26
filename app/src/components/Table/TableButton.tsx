import { Product } from '@/lib/products';
import { EditProductRoute } from '@/utils/routes';
import {Button,ButtonGroup} from '@chakra-ui/react';
import Link from 'next/link';

type TableButtonProps = {

    onEdit: () => void
    onDelete: () => void
    prod: Product
}



export default function TableButton({onEdit,onDelete, prod}:TableButtonProps) {
    
   
    return(
        <>
        <ButtonGroup size='sm'>
            <Link href={`${EditProductRoute}/${prod.id}`} rel="noopener noreferrer">
            <Button colorScheme='teal' variant='outline' onClick={onEdit}>Edit</Button>
            </Link>
            
            <Button colorScheme="red" variant="outline" onClick={onDelete}>Delete </Button>
        </ButtonGroup>
        </>
    )
}