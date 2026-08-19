.class Lcom/czhj/volley/VolleyThreadFactory$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/volley/VolleyThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/volley/VolleyThreadFactory;


# direct methods
.method public constructor <init>(Lcom/czhj/volley/VolleyThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/volley/VolleyThreadFactory$1;->a:Lcom/czhj/volley/VolleyThreadFactory;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
