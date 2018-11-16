[33mcommit 7de4b3a956f621914b156567ad1eedb2579ec57f[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Fri Nov 16 13:35:19 2018 +0200

    feat(models): Add result scoping
    
    - Add a default scope on all records to prevent fetching of voided records

[33mcommit 3114893a34a575b633ac8cdaec9536c40947f217[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Fri Nov 16 13:05:34 2018 +0200

    fix(users_controller_spec.rb): Fix body parsing

[33mcommit 0019c052a43b86a5578f8ee3ffec06fce5f6b9cf[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Fri Nov 16 13:00:29 2018 +0200

    Defined an action to get a concerned user. Collected test for returning the concerned user

[33mcommit 9be926fa8108af831fa346ce73dfd9c99407a8a7[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Fri Nov 16 12:00:24 2018 +0200

    test(users_controller_spec.rb): Add view user test

[33mcommit b38f84da0b298204e3bcf3bd8e523d35de901410[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Fri Nov 16 11:56:08 2018 +0200

    fix(users_controller_spec.rb): Fix test params bug
    
    - Altered params being sent in test to reflect route

[33mcommit 59e924600988372b891a344038a3035613f3c27e[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Fri Nov 16 11:50:53 2018 +0200

    another collection of user parameters white listed for update

[33mcommit 2feb795d3ed658067a7a0c7b4698f874004773a5[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Fri Nov 16 11:44:23 2018 +0200

    collection of user parameters white listed for update

[33mcommit 3bbd16e2fb94bbd6ac1d8bb342b8dcdd048bda4a[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Fri Nov 16 11:17:27 2018 +0200

    modified json response on user update to return only the user object

[33mcommit dac60f2bff19cfb0f7e45f0f1a9f527e9962a0da[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Fri Nov 16 10:58:49 2018 +0200

    User Profile Update in the Users Controller

[33mcommit 10507e8b733bfdbeb033261624c5e2d5a0b01332[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Fri Nov 16 10:29:49 2018 +0200

    test(users_controller_spec.rb): Add user update test
    
    - Added test to check for status 200
    - Added test to verify update

[33mcommit 5be5afcb5c8595d654f1311f9fe898632bd2c126[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Fri Nov 16 09:41:44 2018 +0200

    modifiying user migration, namespace and routing configuration

[33mcommit 84520bd0849db006859127a46747e38cdf84512c[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Fri Nov 16 08:02:46 2018 +0200

    refactor(user.rb): Disable user confirmation
    
    - Disabled devise_token_auth email confirmation

[33mcommit 02bf69dceae53475659881bae69523991f926843[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Thu Nov 15 14:23:55 2018 +0200

    fix(user_spec.rb): Fix password validation
    
    - Removed password validation in test to reflect changes to the schema

[33mcommit 8d7bdbe5cdacd683e26a40305533f04a65383596[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Thu Nov 15 14:15:49 2018 +0200

    feat(/): Add JWT auth
    
    - Initialized devise_token_auth
    - Added MailCatcher to catch confirmation emails
    - Permitted extra users params in application controller

[33mcommit f1c125a0a1fcbb4464d9cc569437aa7657b383ce[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:52:52 2018 +0200

    test(user_spec.rb): Add test to validate associations
    
    - Added test to verify that a user belongs to a role
    
    - Added test to verify that a user belongs to a department

[33mcommit b248ba5a0e8f194a03f976f37f5a3d7f2afc5fb0[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:46:28 2018 +0200

    chore(Gemfile): Add test deps
    
    - Added shoulda gem to allow for use of shoulda matchers

[33mcommit de35721b5462ab8034881a8dec66bfc7e6d2426c[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:45:14 2018 +0200

    refactor(user_spec.rb): Refactor validations as test group
    
    - Refactored param validations and grouped them as Params Validations

[33mcommit 80b3cee9ed9598861b565e0eec2bd7b1bcd45428[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:38:09 2018 +0200

    test(user_spec.rb): Write tests to validate empty required fields
    
    - Wrote test to check for rejection of empty email
    - Wrote test to check for rejection of empty password
    - Wrote test to check for rejection of empty role_id
    - Wrote test to check for rejection of empty department_id

[33mcommit f92d669a981c13021fed233558a787023f9f19b9[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:34:47 2018 +0200

    test(user_spec.rb): Write test to validate firstname
    
    - Wrote test to check if empty name is flagged as invalid

[33mcommit ae32be7a0b00fa3de7496d45e107e43990d1ffdc[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:33:13 2018 +0200

    test(user.rb, user_spec.rb): Write test to check for valid data
    
    - Wrote a test to verify that valid data passes

[33mcommit 5636e78fe3c8e80c0b9a841b9a97e6a72e913ad9[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:28:13 2018 +0200

    chore(factories.rb): Write user factory
    
    - Wrote a user factory to generate fake user data

[33mcommit d2031376a200fd86dc4c8d495cf8c63de20115c3[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:06:57 2018 +0200

    test(department.rb, department_spec.rb): Write test to check for validation of empty name
    
    - Wrote test to check for failure when name is empty
    - Wrote code to pass it

[33mcommit a33ca07bb077c8d5807da3ae38db8c8c1c3e6410[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 14:00:57 2018 +0200

    test(department.rb, department_spec.rb): Write test for valid data
    
    - Wrote test to check if  valid data passes
    -Wrote code to pass it

[33mcommit 41601741fb13cec72e4812ef755ec16c4f7013d0[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 13:58:56 2018 +0200

    test(role.rb, role_spec.rb): Write test to validate name
    
    - Wrote test to check for failure when name is empty
    - Wrote code to pass the test

[33mcommit 257ff395ce0836ea4ecd7e8351268ffac4af8e42[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 13:38:25 2018 +0200

    test(role_spec.rb, role.rb): Write test to validate valid data
    
    - Wrote test to pass on valid data and wrote code to pass it

[33mcommit 2650d841ac8d7e785420c62f7da89900ea4d3550[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 11:48:16 2018 +0200

    test(role_spec.rb): Add validations
    
    - Added test to verify that valid input is valid

[33mcommit f82e3784ded5914be502f557029154285cbe0862[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 11:42:22 2018 +0200

    feat(factories.rb): Add role factory
    
    - Added role factory and used faker to generate random roles

[33mcommit 1ab40ef15012aeb3faeff5b095252550cf4c766b[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 11:40:02 2018 +0200

    feat(factories.rb): Add department factory
    
    - Added department factory using faker to generate random department name

[33mcommit 9cb989b436b20f74e7f2f2acc91d3fde17761a7d[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 11:32:35 2018 +0200

    chore(/spec): Configure factory_bot
    
    - Included factory_bot in the test suite for easier access to factory_bot methods

[33mcommit 0a56631142076cfd2dcc8898e0134d3eed379cf8[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 11:24:30 2018 +0200

    chore(/): Install Rspec

[33mcommit 12049705d0a8d895beeca1ee94472fca7c17ab75[m
Author: danielmwakanema <danielmwakanema95@gmail.com>
Date:   Wed Nov 14 11:21:57 2018 +0200

    chore(Gemfile): Add test and dev deps
    
    - Added Rspec
    - Added factory_bot_rails
    - Added faker

[33mcommit 9450739a638beddca5a3404a453fea94a611b73d[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Wed Nov 14 10:34:57 2018 +0200

    init commit

[33mcommit d8f12385b2ab896f77b63bf52eee7030c4a8dbf8[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Wed Nov 14 10:20:21 2018 +0200

    setting up models - user, department, role

[33mcommit 210eb4194bf5e99735e62e0c7c6e94b12500b8fa[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Wed Nov 14 10:05:19 2018 +0200

    setting up database migrations

[33mcommit 364d2a544617e3220bbba7144293e4cbc0860ea3[m
Author: James Mwantisi <jamesmwantisi@gmail.com>
Date:   Wed Nov 14 09:47:51 2018 +0200

    Configuring MySQL database
