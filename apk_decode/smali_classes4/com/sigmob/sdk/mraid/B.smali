.class public final synthetic Lcom/sigmob/sdk/mraid/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/mraid/a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/sigmob/sdk/mraid/c;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid/a;Ljava/lang/String;Lcom/sigmob/sdk/mraid/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/B;->b:Lcom/sigmob/sdk/mraid/a;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/B;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/B;->d:Lcom/sigmob/sdk/mraid/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/B;->b:Lcom/sigmob/sdk/mraid/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/B;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/B;->d:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/mraid/a;->c(Lcom/sigmob/sdk/mraid/a;Ljava/lang/String;Lcom/sigmob/sdk/mraid/c;)V

    return-void
.end method
