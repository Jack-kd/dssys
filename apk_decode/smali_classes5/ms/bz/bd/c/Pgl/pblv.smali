.class public Lms/bz/bd/c/Pgl/pblv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bz/bd/c/Pgl/pblv$pgla;,
        Lms/bz/bd/c/Pgl/pblv$pblb;
    }
.end annotation


# static fields
.field public static final CLIENT_TYPE_BUSINESS:I = 0x1

.field public static final CLIENT_TYPE_INHOUSE:I = 0x0

.field public static final CLIENT_TYPE_UNKNOWN:I = -0x1

.field public static final COLLECT_MODE_DEFAULT:I = 0x1869f

.field public static final COLLECT_MODE_ML_MINIMIZE:I = 0x122

.field public static final COLLECT_MODE_ML_PGL_AL:I = 0x32a


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Ljava/util/HashMap;

.field protected p:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->a:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->b:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->c:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->d:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->e:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->f:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->g:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->h:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lms/bz/bd/c/Pgl/pblv;->k:I

    iput v0, p0, Lms/bz/bd/c/Pgl/pblv;->l:I

    const v0, 0x1869f

    iput v0, p0, Lms/bz/bd/c/Pgl/pblv;->m:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblv;->p:Ljava/util/HashSet;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
