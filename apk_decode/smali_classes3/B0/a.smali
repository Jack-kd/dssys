.class public final synthetic LB0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LB0/d;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(LB0/d;IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/a;->b:LB0/d;

    iput p2, p0, LB0/a;->c:I

    iput p3, p0, LB0/a;->d:I

    iput p4, p0, LB0/a;->e:I

    iput p5, p0, LB0/a;->f:I

    iput p6, p0, LB0/a;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, LB0/a;->b:LB0/d;

    iget v1, p0, LB0/a;->c:I

    iget v2, p0, LB0/a;->d:I

    iget v3, p0, LB0/a;->e:I

    iget v4, p0, LB0/a;->f:I

    iget v5, p0, LB0/a;->g:I

    invoke-static/range {v0 .. v5}, LB0/d;->a(LB0/d;IIIII)V

    return-void
.end method
