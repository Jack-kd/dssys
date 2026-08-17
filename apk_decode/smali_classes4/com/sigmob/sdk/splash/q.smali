.class public final synthetic Lcom/sigmob/sdk/splash/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/splash/f;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/splash/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/q;->b:Lcom/sigmob/sdk/splash/f;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/q;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/q;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/splash/f;->p(Lcom/sigmob/sdk/splash/f;Ljava/lang/String;)V

    return-void
.end method
