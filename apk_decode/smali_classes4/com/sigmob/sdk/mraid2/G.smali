.class public final synthetic Lcom/sigmob/sdk/mraid2/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/mraid2/p$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/mraid2/d$a;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid2/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/G;->a:Lcom/sigmob/sdk/mraid2/d$a;

    return-void
.end method


# virtual methods
.method public final valueChange(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/G;->a:Lcom/sigmob/sdk/mraid2/d$a;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid2/d$a;->d(Lcom/sigmob/sdk/mraid2/d$a;Lorg/json/JSONObject;)V

    return-void
.end method
