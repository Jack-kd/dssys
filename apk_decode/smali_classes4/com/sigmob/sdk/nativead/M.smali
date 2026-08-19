.class public final synthetic Lcom/sigmob/sdk/nativead/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/czhj/volley/VolleyError;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/czhj/volley/VolleyError;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/M;->b:Lcom/czhj/volley/VolleyError;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/M;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/M;->b:Lcom/czhj/volley/VolleyError;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/M;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/b$1;->b(Lcom/czhj/volley/VolleyError;Landroid/content/Context;)V

    return-void
.end method
