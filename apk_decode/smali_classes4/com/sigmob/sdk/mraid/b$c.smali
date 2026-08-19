.class final Lcom/sigmob/sdk/mraid/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/b;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/mraid/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/b$c;->a:Lcom/sigmob/sdk/mraid/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid/b;Lcom/sigmob/sdk/mraid/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/b$c;-><init>(Lcom/sigmob/sdk/mraid/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/b$c;->a:Lcom/sigmob/sdk/mraid/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/b;->a(Lcom/sigmob/sdk/mraid/b;Z)V

    return-void
.end method
