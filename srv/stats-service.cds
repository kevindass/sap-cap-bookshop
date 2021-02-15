// Import Directives Examples
// CLI with cds complie srv/stats-service.cds -2 sql
// CLI with cds deploy

//Option-1
using my from '../db/schema';
service Stats @(impl: 'srv/stats-customLogic.js'){
    @readonly
    entity OrderInfo as projection on my.bookshop.Orders excluding{
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        book
    }
}


//Option-2
/* 
using my.bookshop from '../db/schema';
service Stats{
    @readonly
    entity OrderInfo as projection on bookshop.Orders excluding{
        createAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        book
    }
}
*/

//Option-3
/* 
using my.bookshop as my from '../db/schema';
service Stats{
    @readonly
    entity OrderInfo as projection on my.Orders excluding{
        createAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        book
    }
}
*/
