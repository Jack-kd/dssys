package org.eclipse.jetty.security;

import java.io.Serializable;

/* loaded from: classes5.dex */
public class MappedLoginService$Anonymous implements MappedLoginService$UserPrincipal, Serializable {
    private static final long serialVersionUID = 1097640442553284845L;

    @Override // org.eclipse.jetty.security.MappedLoginService$UserPrincipal
    public boolean authenticate(Object obj) {
        return false;
    }

    @Override // java.security.Principal
    public String getName() {
        return "Anonymous";
    }

    @Override // org.eclipse.jetty.security.MappedLoginService$UserPrincipal
    public boolean isAuthenticated() {
        return false;
    }
}
