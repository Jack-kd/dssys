.class public final Lcom/smartdigimkt/d4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/sdk/core/SDKContext;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;


# direct methods
.method public constructor <init>(ZZLcom/smartdigimkt/sdk/core/SDKContext;Ljava/lang/String;Ljava/util/Map;Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/smartdigimkt/d4/c;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/smartdigimkt/d4/c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/smartdigimkt/d4/c;->c:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/smartdigimkt/d4/c;->d:Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/d4/c;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 2
    .line 3
    new-instance v1, Lcom/smartdigimkt/d4/b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/smartdigimkt/d4/b;-><init>(Lcom/smartdigimkt/d4/c;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/smartdigimkt/sdk/core/SDKContext;->a(Lcom/smartdigimkt/sdk/api/SDMSDK$InitCallBack;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
