.class public final synthetic Lcom/sigmob/sdk/splash/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/splash/f;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/splash/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/p;->b:Lcom/sigmob/sdk/splash/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/p;->b:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->n()V

    return-void
.end method
