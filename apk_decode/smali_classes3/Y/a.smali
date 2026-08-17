.class public final synthetic LY/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/byazt/rz/eb;

.field public final synthetic f:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;ZLcom/byazt/rz/eb;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LY/a;->b:I

    iput-object p2, p0, LY/a;->c:Ljava/lang/String;

    iput-boolean p3, p0, LY/a;->d:Z

    iput-object p4, p0, LY/a;->e:Lcom/byazt/rz/eb;

    iput-object p5, p0, LY/a;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, LY/a;->b:I

    iget-object v1, p0, LY/a;->c:Ljava/lang/String;

    iget-boolean v2, p0, LY/a;->d:Z

    iget-object v3, p0, LY/a;->e:Lcom/byazt/rz/eb;

    iget-object v4, p0, LY/a;->f:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/rz/a;->a(ILjava/lang/String;ZLcom/byazt/rz/eb;Ljava/lang/Throwable;)V

    return-void
.end method
