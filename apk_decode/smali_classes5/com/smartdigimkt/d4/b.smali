.class public final Lcom/smartdigimkt/d4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/sdk/api/SDMSDK$InitCallBack;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/d4/c;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/d4/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/d4/b;->a:Lcom/smartdigimkt/d4/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final fail(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/smartdigimkt/d4/b;->a:Lcom/smartdigimkt/d4/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/smartdigimkt/d4/c;->d:Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;

    .line 4
    .line 5
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/smartdigimkt/d4/f;

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-direct {v1, p1, v2}, Lcom/smartdigimkt/d4/f;-><init>(Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final success()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/d4/b;->a:Lcom/smartdigimkt/d4/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/smartdigimkt/d4/c;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/SDKContext;->k()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/smartdigimkt/d4/b;->a:Lcom/smartdigimkt/d4/c;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/smartdigimkt/d4/c;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/smartdigimkt/d4/c;->c:Ljava/util/Map;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/smartdigimkt/d4/c;->d:Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;

    .line 15
    .line 16
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/smartdigimkt/z4/d;->e()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/smartdigimkt/z4/m;->a()Lcom/smartdigimkt/z4/m;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v1}, Lcom/smartdigimkt/z4/m;->a(Ljava/lang/String;)Lcom/smartdigimkt/a5/e;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Lcom/smartdigimkt/j4/a;

    .line 32
    .line 33
    invoke-direct {v4, v1}, Lcom/smartdigimkt/j4/a;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v3, v4, Lcom/smartdigimkt/j4/a;->b:Lcom/smartdigimkt/a5/e;

    .line 37
    .line 38
    new-instance v3, Lcom/smartdigimkt/d4/d;

    .line 39
    .line 40
    invoke-direct {v3, v1, v2, v0}, Lcom/smartdigimkt/d4/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, v4, Lcom/smartdigimkt/j4/a;->c:Lcom/smartdigimkt/z4/l;

    .line 44
    .line 45
    new-instance v0, Lcom/smartdigimkt/j4/b;

    .line 46
    .line 47
    invoke-direct {v0, v4}, Lcom/smartdigimkt/j4/b;-><init>(Lcom/smartdigimkt/j4/a;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lcom/smartdigimkt/d4/e;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/smartdigimkt/d4/e;-><init>(Lcom/smartdigimkt/j4/b;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
