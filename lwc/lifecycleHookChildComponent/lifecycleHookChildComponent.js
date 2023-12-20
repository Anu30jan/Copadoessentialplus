import { LightningElement } from 'lwc';

export default class LifecycleHookChildComponent extends LightningElement {

    constructor(){

        
       super();

        console.log('call received from child constructor');
    }

    connectedCallback(){


        console.log('call received from child connected callback');

    }

    renderedCallback(){


        console.log('call received from child rendered callback');

    }

    disconnectedCallback(){


        console.log('call received from child disconnected callback');

    }




}