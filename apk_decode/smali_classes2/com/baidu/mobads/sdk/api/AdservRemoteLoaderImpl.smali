.class public Lcom/baidu/mobads/sdk/api/AdservRemoteLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/u;


# annotations
.annotation build Lcom/baidu/mobads/sdk/api/Route;
    path = "remote_adserv"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassLoaderFromJar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/f;->a()Lcom/baidu/mobads/sdk/internal/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/mobads/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getClassLoaderFromJar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/mobads/sdk/api/AdservRemoteLoaderImpl;->getClassLoaderFromJar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public startLoadRemotePhp(DLcom/baidu/mobads/sdk/internal/an$b;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/f;->a()Lcom/baidu/mobads/sdk/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobads/sdk/internal/f;->a(DLcom/baidu/mobads/sdk/internal/an$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
