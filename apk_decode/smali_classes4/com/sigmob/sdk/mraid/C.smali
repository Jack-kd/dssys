.class public final synthetic Lcom/sigmob/sdk/mraid/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/mraid/v$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/mraid/c;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/C;->a:Lcom/sigmob/sdk/mraid/c;

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/C;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/c;Z)V

    return-void
.end method
