.class public final Landroid/support/v4/graphics/PathSegment;
.super Ljava/lang/Object;
.source "PathSegment.java"


# instance fields
.field private final mEnd:Landroid/graphics/PointF;

.field private final mEndFraction:F

.field private final mStart:Landroid/graphics/PointF;

.field private final mStartFraction:F


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V
    .registers 6
    .param p1  # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "start == null"

    .line 38
    invoke-static {p1, v0}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iput-object p1, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    .line 39
    iput p2, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    const-string p1, "end == null"

    .line 40
    invoke-static {p3, p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iput-object p1, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    .line 41
    iput p4, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 73
    :cond_4
    instance-of v1, p1, Landroid/support/v4/graphics/PathSegment;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 74
    :cond_a
    check-cast p1, Landroid/support/v4/graphics/PathSegment;

    .line 75
    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    iget v3, p1, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_35

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    iget v3, p1, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    .line 76
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    iget-object v3, p1, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    .line 77
    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    iget-object p1, p1, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    .line 78
    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0
.end method

.method public getEnd()Landroid/graphics/PointF;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getEndFraction()F
    .registers 2

    .line 67
    iget v0, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    return v0
.end method

.method public getStart()Landroid/graphics/PointF;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    iget-object v0, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getStartFraction()F
    .registers 2

    .line 54
    iget v0, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 83
    iget-object v0, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_30

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_30
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathSegment{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
