.class public final synthetic Lcom/sigmob/sdk/mraid2/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/mraid2/d;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/F;->b:Lcom/sigmob/sdk/mraid2/d;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid2/F;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/F;->b:Lcom/sigmob/sdk/mraid2/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/F;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/d$a;->b(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V

    return-void
.end method
