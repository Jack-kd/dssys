package org.eclipse.jetty.security.authentication;

import N1.e;
import N1.q;
import R1.b;
import R1.c;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;

/* loaded from: classes5.dex */
public class SessionAuthentication implements e, Serializable, HttpSessionActivationListener, HttpSessionBindingListener {
    private static final c LOG = b.a(SessionAuthentication.class);
    public static final String __J_AUTHENTICATED = "org.eclipse.jetty.security.UserIdentity";
    private static final long serialVersionUID = -4643200685888258706L;
    private final Object _credentials;
    private final String _method;
    private final String _name;
    private transient HttpSession _session;
    private transient q _userIdentity;

    public SessionAuthentication(String str, q qVar, Object obj) {
        this._method = str;
        throw null;
    }

    private void doLogout() {
        M1.c.f0();
        HttpSession httpSession = this._session;
        if (httpSession != null) {
            httpSession.removeAttribute("org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        M1.c.f0();
        throw new IllegalStateException("!SecurityHandler");
    }

    public String getAuthMethod() {
        return this._method;
    }

    public q getUserIdentity() {
        return null;
    }

    public boolean isUserInRole(q.a aVar, String str) {
        throw null;
    }

    public void logout() {
        HttpSession httpSession = this._session;
        if (httpSession != null && httpSession.getAttribute(__J_AUTHENTICATED) != null) {
            this._session.removeAttribute(__J_AUTHENTICATED);
        }
        doLogout();
    }

    public void sessionDidActivate(HttpSessionEvent httpSessionEvent) {
        if (this._session == null) {
            this._session = httpSessionEvent.getSession();
        }
    }

    public void sessionWillPassivate(HttpSessionEvent httpSessionEvent) {
    }

    public String toString() {
        return "Session" + super.toString();
    }

    public void valueBound(HttpSessionBindingEvent httpSessionBindingEvent) {
        if (this._session == null) {
            this._session = httpSessionBindingEvent.getSession();
        }
    }

    public void valueUnbound(HttpSessionBindingEvent httpSessionBindingEvent) {
        doLogout();
    }
}
