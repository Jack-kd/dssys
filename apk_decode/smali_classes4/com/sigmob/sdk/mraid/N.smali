.class public final synthetic Lcom/sigmob/sdk/mraid/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/mraid/s$3;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid/s$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/N;->a:Lcom/sigmob/sdk/mraid/s$3;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/N;->a:Lcom/sigmob/sdk/mraid/s$3;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid/s$3;->a(Lcom/sigmob/sdk/mraid/s$3;Ljava/lang/String;)V

    return-void
.end method
