import {Button,ButtonGroup} from '@chakra-ui/react';

type TableButtonProps = {

    onEdit: () => void
    onDelete: () => void
}



export default function TableButton({onEdit,onDelete}:TableButtonProps) {
    
   
    return(
        <>
        <ButtonGroup size='sm'>
            <Button colorScheme='teal' variant='outline' onClick={onEdit}>Edit</Button>
            <Button colorScheme="red" variant="outline" onClick={onDelete}>Delete </Button>
        </ButtonGroup>
        </>
    )
}