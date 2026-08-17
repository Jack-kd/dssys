.class public final synthetic Lh1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh1/r;

.field public final synthetic c:Lh1/o;


# direct methods
.method public synthetic constructor <init>(Lh1/r;Lh1/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/q;->b:Lh1/r;

    iput-object p2, p0, Lh1/q;->c:Lh1/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/q;->b:Lh1/r;

    iget-object v1, p0, Lh1/q;->c:Lh1/o;

    invoke-static {v0, v1}, Lh1/r;->e(Lh1/r;Lh1/o;)V

    return-void
.end method
