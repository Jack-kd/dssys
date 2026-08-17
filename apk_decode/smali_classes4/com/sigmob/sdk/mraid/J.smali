.class public final synthetic Lcom/sigmob/sdk/mraid/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/mraid/h$e;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/mraid/s;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/J;->a:Lcom/sigmob/sdk/mraid/s;

    return-void
.end method


# virtual methods
.method public final useCustomCloseChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/J;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid/s;->p(Lcom/sigmob/sdk/mraid/s;Z)V

    return-void
.end method
