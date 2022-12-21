Access and authentication
*************************
Here at Altmetric security and privacy are of the utmost importance to us which is why we provide you with various ways to control access to your |efi|. 

We support the following types of user access/authentication:

#. **IP access** - We allow access to your |efi| instance only within your office/campus IP ranges. Users can go to altmetric.com/explorer and access the platform as a guest. This means a user is given access to the full database and can create an account, via the plus sign at the bottom left hand corner for additional functionalities including saved searches and email alerts.
#. **Unique invite link** - We generate a unique link you can share with your users to create their own account.
#. **Email address** - We allow your users to sign up with their institutional email address, so as an example anyone with an **@altmetric.com** email would be able to create their own profile in the |efi|.
#. **Single sign-on** - Altmetric supports SAML2 based authentication (OpenAthens, AD-FS, Azure, Shibboleth etc), and we're a member of the UK Federation and Surfconext. If your institution uses SAML2 based authentication we can work with your team to implement federated access to the Explorer. When SSO is enabled, users are redirected to your IdP (Identity Provider) for authentication. This means your members can use their institutional credentials to login to |efi| and you control who has access to your instance.

.. note::
    There is an additional fee for enabling SSO. If this isn't already part of your contract or if you are interested adding SSO please contact your |account-manager| to discuss.

Single Sign-On
==============
In order to set up SSO you'll need to provide Altmetric with a technical contact who will be able to answer questions about the university's ldP (Identity Provider).

UK and Rest of World (excl. Netherlands)
----------------------------------------

**Metadata**

Our production metadata can be found within the UK Access Federation or alternatively available here: https://www.altmetric.com/explorer/shibboleth/metadata.xml.

If your organization is not a member or you would prefer to provide us with a direct link to your metadata instead, this is also supported.

**Attributes**

In order for users to be able to login successfully one of the following attributes will need to be released:

- ``eduPersonPrincipalName`` => ``urn:mace:dir:attribute-def:eduPersonPrincipalName`` or ``urn:oid:1.3.6.1.4.1.5923.1.1.1.6``
- ``mail`` => ``urn:mace:dir:attribute-def:mail`` or ``urn:oid:0.9.2342.19200300.100.1.3``

.. note::
    
    Accounts require a valid email address so that they can receive opt-in digest/notification emails from the system. If the ``eduPersonPrincipalName`` is not a valid email address and can't
    be used to receive email (i.e. is purely a scoped identifier) then you will need to either:

  - Additionally release the ``mail`` attribute, or
  - Switch to using just the ``mail`` attribute

Where ``mail`` is released alongside the ``eduPersonPrincipalName`` the ``eduPersonPrincipalName`` can be used as the account identifier but the user will receive their digest emails via the value associated
with the ``mail`` attribute. 

Surfconext
----------
Adding SSO provided by Surfconext is really simple, all you'll need to do is have your technical contact reach out to support@surfconext.nl and let them know that you'd like to add the `Altmetric Explorer <https://dashboard.surfconext.nl/apps/7662/saml20_sp/about>`_ service and we'll do the rest.