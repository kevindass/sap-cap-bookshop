using my.bookshop as my from '../db/schema';

service CatalogService {
    //Shortcut
    @readonly entity Books as projection on my.Books;
    //Granular level
    @Capabilities: { 
    InsertRestrictions.Insertable: true,
    UpdateRestrictions.Updatable: true,
    DeleteRestrictions.Deletable: false  
     }
    entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders;
}
