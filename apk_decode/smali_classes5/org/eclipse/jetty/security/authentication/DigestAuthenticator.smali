.class public abstract Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    }
.end annotation


# static fields
.field public static final a:LR1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->a:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()LR1/c;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->a:LR1/c;

    .line 2
    .line 3
    return-object v0
.end method
