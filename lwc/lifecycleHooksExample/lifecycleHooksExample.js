import { LightningElement } from 'lwc';

export default class LifecycleHooksExample extends LightningElement {


    constructor(){

        
        super();

        console.log('call received from constructor');
    }

    connectedCallback(){


        console.log('call received from connected callback');

    }

    renderedCallback(){


        console.log('call received from rendered callback');

    }

    errorCallback(){

        console.log('call received from error callback');
    }

    isVisible= true;

    handleClick(){

            if(this.isVisible== true)
            {
                this.isVisible=false;
            }
            else
            {

                this.isVisible = true;
            }



    }

}