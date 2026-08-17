.class public final synthetic Lcom/sigmob/sdk/base/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/o$1;

.field public final synthetic c:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/o$1;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/s;->b:Lcom/sigmob/sdk/base/o$1;

    iput-object p2, p0, Lcom/sigmob/sdk/base/s;->c:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/s;->b:Lcom/sigmob/sdk/base/o$1;

    iget-object v1, p0, Lcom/sigmob/sdk/base/s;->c:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/o$1;->a(Lcom/sigmob/sdk/base/o$1;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)V

    return-void
.end method
