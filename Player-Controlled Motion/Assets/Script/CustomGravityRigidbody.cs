﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class CustomGravityRigidbody : MonoBehaviour
{
    Rigidbody body;
    float floatDelay;
    [SerializeField]
    bool floatToSleep = false;

    private void Awake()
    {
        body = GetComponent<Rigidbody>();
        body.useGravity = false;
    }

    private void FixedUpdate()
    {
        if (floatToSleep) {
            if (body.IsSleeping())
            {
                floatDelay = 0f;
                return;
            }
            if (body.velocity.sqrMagnitude < 0.0001f)
            {
                floatDelay += Time.deltaTime;
                if (floatDelay >= 1f)
                {
                    return;
                }
            }
            else
            {
                floatDelay = 0f;
            }
        }    
        body.AddForce(CustomGravity.GetGravity(body.position), ForceMode.Acceleration);
    }
}
