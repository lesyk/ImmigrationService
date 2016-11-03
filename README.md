# Immigration Service
![Ethereum Smart Immigration Service](https://github.com/lesyk/ImmigrationService/blob/master/logo.jpg?raw=true)

My first Ethereum-based application.

Idea: use Ethereum smart contracts for managing immigration service visa review system.
User stories:
1. As a visa applicant, you get link for visa application form, which is also a contract. 
You feel it and wait for other party to review it. Also, you can check the status of the form.

2. As a immigration office, you can reject of approve the form.

3. As a border control, you can check the status of the visa form.

####Setup
1. `yarn install`

2. Run `testrpc` in one terminal window to start Ethereum node.

3. Run `truffle console` in another terminal window to start development framework.

####Test
```
var va = VisaApplication.deployed()
va.createVisaForm("test")
va.checkStatus("test")

var bc = BorderControl.deployed()
bc.personHasVisa(va.address, "test")
```

Developed during #TriforkHackerDays, thx Trifork for opportunity and awesome mindset.
