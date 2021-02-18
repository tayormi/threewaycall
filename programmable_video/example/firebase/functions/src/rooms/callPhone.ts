import * as functions from 'firebase-functions';
import { CallableContext } from 'firebase-functions/lib/providers/https';
import * as _ from 'lodash';
import * as twilio from 'twilio';
import { CallListInstanceCreateOptions } from 'twilio/lib/rest/api/v2010/account/call';

/*
Title: Call a phone number and add to room
Twilio NodeJS Example: https://www.twilio.com/docs/voice/tutorials/how-to-make-outbound-phone-calls-node-js
Request: https://www.twilio.com/docs/video/api/rooms-resource?code-sample=code-retrieve-an-in-progress-room-instance-by-uniquename&code-language=Node.js&code-sdk-version=3.x#post-list-resource
*/

let _client: twilio.Twilio;
const client = () => {
    return _client = _client || twilio(process.env.TWILIO_ACCOUNT_SID, process.env.TWILIO_AUTH_TOKEN, { lazyLoading: true });
}

export const callPhone = async (data: any, context: CallableContext) => {
    try {
        // const defaultOptions = {
        //     statusCallbackMethod: 'POST',
        //     statusCallback: `https://europe-west1-${process.env.GCLOUD_PROJECT}.cloudfunctions.net/webHooksApi/web-hooks/twilio/programmable-video/rooms/`
        // };
        if (!data.phoneNumber) {
            throw new functions.https.HttpsError('invalid-argument', 'phone number is required!');
        }
        
        const callOptions: CallListInstanceCreateOptions = {
            twiml: `<Response><Connect><Room participantIdentity='PhoneCall'>Call</Room></Connect></Response>`,
            to: data.phoneNumber,
            from: '+19374683173'
        };
       // const options = _.merge({}, defaultOptions, _.omitBy(callOptions, _.isNil));
        console.log('Request: ', JSON.stringify(callOptions));
        const response = JSON.stringify(await (client().calls.create(callOptions)));
        console.log('Response: ', response);
        return JSON.parse(response);

    } catch (e) {
        console.error(e);
        throw new functions.https.HttpsError(
            'aborted',
            `${e}`
        );

    }
}