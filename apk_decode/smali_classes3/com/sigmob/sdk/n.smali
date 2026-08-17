.class public final synthetic Lcom/sigmob/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/c$1;

.field public final synthetic c:Lcom/sigmob/sdk/base/utils/d$a;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/sigmob/sdk/videoAd/m;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/base/utils/d$a;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/n;->b:Lcom/sigmob/sdk/c$1;

    iput-object p2, p0, Lcom/sigmob/sdk/n;->c:Lcom/sigmob/sdk/base/utils/d$a;

    iput-object p3, p0, Lcom/sigmob/sdk/n;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/n;->e:Lcom/sigmob/sdk/videoAd/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/n;->b:Lcom/sigmob/sdk/c$1;

    iget-object v1, p0, Lcom/sigmob/sdk/n;->c:Lcom/sigmob/sdk/base/utils/d$a;

    iget-object v2, p0, Lcom/sigmob/sdk/n;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/n;->e:Lcom/sigmob/sdk/videoAd/m;

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/c$1;->j(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/base/utils/d$a;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/m;)V

    return-void
.end method
