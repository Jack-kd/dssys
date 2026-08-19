.class public Lorg/eclipse/jetty/security/authentication/SessionAuthentication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN1/e;
.implements Ljava/io/Serializable;
.implements Ljavax/servlet/http/HttpSessionActivationListener;
.implements Ljavax/servlet/http/HttpSessionBindingListener;


# static fields
.field private static final LOG:LR1/c;

.field public static final __J_AUTHENTICATED:Ljava/lang/String; = "org.eclipse.jetty.security.UserIdentity"

.field private static final serialVersionUID:J = -0x406ff66c4f384292L


# instance fields
.field private final _credentials:Ljava/lang/Object;

.field private final _method:Ljava/lang/String;

.field private final _name:Ljava/lang/String;

.field private transient _session:Ljavax/servlet/http/HttpSession;

.field private transient _userIdentity:LN1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->LOG:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LN1/q;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_method:Ljava/lang/String;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method private doLogout()V
    .locals 2

    .line 1
    invoke-static {}, LM1/c;->f0()LM1/c;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LM1/c;->f0()LM1/c;

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v0, "!SecurityHandler"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_method:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserIdentity()LN1/q;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public isUserInRole(LN1/q$a;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public logout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "org.eclipse.jetty.security.UserIdentity"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->doLogout()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public sessionDidActivate(Ljavax/servlet/http/HttpSessionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljavax/servlet/http/HttpSessionEvent;->getSession()Ljavax/servlet/http/HttpSession;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public sessionWillPassivate(Ljavax/servlet/http/HttpSessionEvent;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Session"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljavax/servlet/http/HttpSessionBindingEvent;->getSession()Ljavax/servlet/http/HttpSession;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->doLogout()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
