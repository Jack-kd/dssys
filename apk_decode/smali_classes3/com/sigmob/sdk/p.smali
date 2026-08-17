.class public final synthetic Lcom/sigmob/sdk/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/c$1;

.field public final synthetic c:Lcom/sigmob/sdk/videoAd/m;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/p;->b:Lcom/sigmob/sdk/c$1;

    iput-object p2, p0, Lcom/sigmob/sdk/p;->c:Lcom/sigmob/sdk/videoAd/m;

    iput-object p3, p0, Lcom/sigmob/sdk/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/p;->b:Lcom/sigmob/sdk/c$1;

    iget-object v1, p0, Lcom/sigmob/sdk/p;->c:Lcom/sigmob/sdk/videoAd/m;

    iget-object v2, p0, Lcom/sigmob/sdk/p;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/c$1;->f(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    return-void
.end method
