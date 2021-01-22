using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GravityPlane : GravitySource
{
    [SerializeField]
    float gravity = 9.81f;

    public override Vector3 GetGravity(Vector3 position)
    {
        Vector3 up = Vector3.up;
        return -gravity * up;
    }

}
