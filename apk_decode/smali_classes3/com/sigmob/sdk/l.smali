.class public final synthetic Lcom/sigmob/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/c$1;

.field public final synthetic c:Lcom/sigmob/sdk/videoAd/m;

.field public final synthetic d:Lcom/sigmob/windad/WindAdError;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/l;->b:Lcom/sigmob/sdk/c$1;

    iput-object p2, p0, Lcom/sigmob/sdk/l;->c:Lcom/sigmob/sdk/videoAd/m;

    iput-object p3, p0, Lcom/sigmob/sdk/l;->d:Lcom/sigmob/windad/WindAdError;

    iput-object p4, p0, Lcom/sigmob/sdk/l;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/l;->b:Lcom/sigmob/sdk/c$1;

    iget-object v1, p0, Lcom/sigmob/sdk/l;->c:Lcom/sigmob/sdk/videoAd/m;

    iget-object v2, p0, Lcom/sigmob/sdk/l;->d:Lcom/sigmob/windad/WindAdError;

    iget-object v3, p0, Lcom/sigmob/sdk/l;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/c$1;->g(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method
