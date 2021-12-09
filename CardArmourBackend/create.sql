create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system_user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system_user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system_user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));
create table cardarmour.bank account (accountid boolean not null, bankname varchar(255), cardholdername varchar(255), cardnumber varchar(255), cvc boolean, expdate date, primary key (accountid));
create table cardarmour.card link (linkid boolean not null, bankaccountid boolean, linkstatus varchar(255), virtualcardid boolean, primary key (linkid));
create table cardarmour.customer bank account (cba_id boolean not null, accountid boolean, customerid boolean, primary key (cba_id));
create table cardarmour.feedback response (responseid boolean not null, adminid boolean, comment varchar(255), date date, feedbackid boolean, primary key (responseid));
create table cardarmour.flagged user (flaggedid boolean not null, admin_adminid boolean, customer_customerid boolean, reason varchar(255), primary key (flaggedid));
create table cardarmour.phone book (phonenumberid boolean not null, customerid boolean, phonenumber boolean, primary key (phonenumberid));
create table cardarmour.system user (userid boolean not null, password varchar(255), username varchar(255), primary key (userid));
create table cardarmour.virtual card (cardid boolean not null, card number varchar(255), cardholdername varchar(255), cvc boolean, expdate date, primary key (cardid));
create sequence hibernate_sequence start with 1 increment by 1;
create table admin (adminid boolean not null, cityid boolean, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (adminid));
create table city (cityid boolean not null, countryid boolean, name varchar(255), primary key (cityid));
create table country (countryid boolean not null, name varchar(255), primary key (countryid));
create table customer (customerid boolean not null, age boolean, cityid boolean, cnic varchar(255), dob date, email varchar(255), gender varchar(255), name varchar(255), userid boolean, primary key (customerid));
create table feedback (feedbackid boolean not null, customerid boolean, date date, detail varchar(255), primary key (feedbackid));
create table setting (settingid boolean not null, language varchar(255), light/dark_mode varchar(255), timeformat varchar(255), userid boolean, primary key (settingid));
create table sms (sms_id boolean not null, customerid boolean, details varchar(255), time date, transactionid boolean, primary key (sms_id));
create table transaction (transactionid boolean not null, amount boolean, comment varchar(255), date date, status varchar(255), virtualcardid boolean, primary key (transactionid));

    create table cardarmour.bank account (
       accountid number(1,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(1,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(1,0) not null,
        bankaccountid number(1,0),
        linkstatus varchar2(255 char),
        virtualcardid number(1,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(1,0) not null,
        accountid number(1,0),
        customerid number(1,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(1,0) not null,
        adminid number(1,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(1,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(1,0) not null,
        admin_adminid number(1,0),
        customer_customerid number(1,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(1,0) not null,
        customerid number(1,0),
        phonenumber number(1,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(1,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(1,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(1,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(1,0) not null,
        cityid number(1,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(1,0),
        primary key (adminid)
    );

    create table city (
       cityid number(1,0) not null,
        countryid number(1,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(1,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(1,0) not null,
        age number(1,0),
        cityid number(1,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(1,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(1,0) not null,
        customerid number(1,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(1,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(1,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(1,0) not null,
        customerid number(1,0),
        details varchar2(255 char),
        time date,
        transactionid number(1,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(1,0) not null,
        amount number(1,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(1,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(1,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(1,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(1,0) not null,
        bankaccountid number(1,0),
        linkstatus varchar2(255 char),
        virtualcardid number(1,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(1,0) not null,
        accountid number(1,0),
        customerid number(1,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(1,0) not null,
        adminid number(1,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(1,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(1,0) not null,
        admin_adminid number(1,0),
        customer_customerid number(1,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(1,0) not null,
        customerid number(1,0),
        phonenumber number(1,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(1,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(1,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(1,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(1,0) not null,
        cityid number(1,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(1,0),
        primary key (adminid)
    );

    create table city (
       cityid number(1,0) not null,
        countryid number(1,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(1,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(1,0) not null,
        age number(1,0),
        cityid number(1,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(1,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(1,0) not null,
        customerid number(1,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(1,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(1,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(1,0) not null,
        customerid number(1,0),
        details varchar2(255 char),
        time date,
        transactionid number(1,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(1,0) not null,
        amount number(1,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(1,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table hibernate_sequences (
       sequence_name varchar2(255 char) not null,
        next_val number(19,0),
        primary key (sequence_name)
    );

    insert into hibernate_sequences(sequence_name, next_val) values ('default',0);

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table hibernate_sequences (
       sequence_name varchar2(255 char) not null,
        next_val number(19,0),
        primary key (sequence_name)
    );

    insert into hibernate_sequences(sequence_name, next_val) values ('default',0);

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table hibernate_sequences (
       sequence_name varchar2(255 char) not null,
        next_val number(19,0),
        primary key (sequence_name)
    );

    insert into hibernate_sequences(sequence_name, next_val) values ('default',0);

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );

    create table cardarmour.bank account (
       accountid number(10,0) not null,
        bankname varchar2(255 char),
        cardholdername varchar2(255 char),
        cardnumber varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (accountid)
    );

    create table cardarmour.card link (
       linkid number(10,0) not null,
        bankaccountid number(10,0),
        linkstatus varchar2(255 char),
        virtualcardid number(10,0),
        primary key (linkid)
    );

    create table cardarmour.customer bank account (
       cba_id number(10,0) not null,
        accountid number(10,0),
        customerid number(10,0),
        primary key (cba_id)
    );

    create table cardarmour.feedback response (
       responseid number(10,0) not null,
        adminid number(10,0),
        comment varchar2(255 char),
        date date,
        feedbackid number(10,0),
        primary key (responseid)
    );

    create table cardarmour.flagged user (
       flaggedid number(10,0) not null,
        admin_adminid number(10,0),
        customer_customerid number(10,0),
        reason varchar2(255 char),
        primary key (flaggedid)
    );

    create table cardarmour.phone book (
       phonenumberid number(10,0) not null,
        customerid number(10,0),
        phonenumber number(10,0),
        primary key (phonenumberid)
    );

    create table cardarmour.system user (
       userid number(10,0) not null,
        password varchar2(255 char),
        username varchar2(255 char),
        primary key (userid)
    );

    create table cardarmour.virtual card (
       cardid number(10,0) not null,
        card number varchar2(255 char),
        cardholdername varchar2(255 char),
        cvc number(10,0),
        expdate date,
        primary key (cardid)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table admin (
       adminid number(10,0) not null,
        cityid number(10,0),
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (adminid)
    );

    create table city (
       cityid number(10,0) not null,
        countryid number(10,0),
        name varchar2(255 char),
        primary key (cityid)
    );

    create table country (
       countryid number(10,0) not null,
        name varchar2(255 char),
        primary key (countryid)
    );

    create table customer (
       customerid number(10,0) not null,
        age number(10,0),
        cityid number(10,0),
        cnic varchar2(255 char),
        dob date,
        email varchar2(255 char),
        gender varchar2(255 char),
        name varchar2(255 char),
        userid number(10,0),
        primary key (customerid)
    );

    create table feedback (
       feedbackid number(10,0) not null,
        customerid number(10,0),
        date date,
        detail varchar2(255 char),
        primary key (feedbackid)
    );

    create table setting (
       settingid number(10,0) not null,
        language varchar2(255 char),
        light/dark_mode varchar2(255 char),
        timeformat varchar2(255 char),
        userid number(10,0),
        primary key (settingid)
    );

    create table sms (
       sms_id number(10,0) not null,
        customerid number(10,0),
        details varchar2(255 char),
        time date,
        transactionid number(10,0),
        primary key (sms_id)
    );

    create table transaction (
       transactionid number(10,0) not null,
        amount number(10,0),
        comment varchar2(255 char),
        date date,
        status varchar2(255 char),
        virtualcardid number(10,0),
        primary key (transactionid)
    );
