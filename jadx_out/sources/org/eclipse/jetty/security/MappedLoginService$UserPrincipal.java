package org.eclipse.jetty.security;

import java.io.Serializable;
import java.security.Principal;

/* loaded from: classes5.dex */
public interface MappedLoginService$UserPrincipal extends Principal, Serializable {
    boolean authenticate(Object obj);

    boolean isAuthenticated();
}
