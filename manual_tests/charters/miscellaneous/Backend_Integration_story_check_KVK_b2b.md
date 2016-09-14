# Integration Story Check KVK B2B


## Test Basis

<br>

[JUMBOAPP-3592](https://icemobile.atlassian.net/browse/JUMBOAPP-3592)
Basis for development: Customer Modeling Spreadsheet




## Test Ideas

- Check valid KvK number 
- Check invalid KvK number
- Check empty KvK number 
- Check that hardcoded country is removed in the front end
- Check that B2C does not retrieve KVK number in their profile. App check

***		


## Notes
<br>

Execution notes

- Ioana checks in integration
- Frontend devs will chenck if the integration breaks anything.
- The request conforms to the TD of WS15
- The request conforms to the TD of WS15

Other notes

- KVK is now same for companies and zzp, because for companies and zzp, the company name will be taken from the same attribute form CDM, trade_name_full

- Exceptions such as CDM not providing empty object are not handled because we assume that CDM will at least feed in the company name. Note: this is not documented anywhere


## Bugs